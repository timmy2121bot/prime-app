-- SETUP_ALL: run this ONE file once in Supabase SQL Editor.
-- WARNING: this wipes and rebuilds the app database tables below.

drop table if exists public.notifications, public.candidates, public.news,
  public.offers, public.invites, public.profiles cascade;
drop function if exists public.is_owner() cascade;
drop function if exists public.finish_setup(text, text) cascade;
drop function if exists public.notify_candidate() cascade;
drop policy if exists v_read on storage.objects;
drop policy if exists v_ins on storage.objects;
drop policy if exists v_del on storage.objects;

create table profiles(
  id uuid primary key references auth.users on delete cascade,
  full_name text not null,
  role text not null default 'recruiter',
  created_at timestamptz default now()
);

create table invites(
  code text primary key,
  created_by uuid references profiles(id) on delete set null,
  used_by uuid references profiles(id) on delete set null,
  used_at timestamptz,
  created_at timestamptz default now()
);

create table offers(
  id bigserial primary key,
  name text unique not null,
  active boolean default true
);

create table news(
  id bigserial primary key,
  body text not null,
  author text,
  created_at timestamptz default now()
);

create table candidates(
  id uuid primary key default gen_random_uuid(),
  recruiter_id uuid references profiles(id) on delete set null default auth.uid(),
  recruiter_name text,
  full_name text not null,
  phone text,
  email text,
  age int,
  overnight boolean default false,
  offer text,
  voice_path text,
  voice_url text,
  status text default 'New',
  approved_offers text[] default '{}',
  feedback text,
  created_at timestamptz default now()
);

insert into offers(name)
values
  ('Vodafone UK'),
  ('Teleperformance English'),
  ('Concentrix Bilingual'),
  ('Raya Customer Support');

create or replace function public.is_owner()
returns boolean
language sql
security definer
stable
set search_path = public
as $$
  select exists(
    select 1 from profiles
    where id = auth.uid() and role = 'owner'
  )
$$;

create function public.finish_setup(p_name text, p_code text)
returns text
language plpgsql
security definer
as $$
begin
  if exists(select 1 from profiles where id = auth.uid()) then
    return 'exists';
  end if;

  if not exists(select 1 from profiles) then
    insert into profiles(id, full_name, role)
    values(auth.uid(), p_name, 'owner');
    return 'owner';
  end if;

  if not exists(
    select 1 from invites
    where code = p_code and used_by is null
  ) then
    raise exception 'Invalid or already used invite code';
  end if;

  insert into profiles(id, full_name)
  values(auth.uid(), p_name);

  update invites
  set used_by = auth.uid(), used_at = now()
  where code = p_code;

  return 'recruiter';
end
$$;

alter table profiles enable row level security;
alter table invites enable row level security;
alter table offers enable row level security;
alter table news enable row level security;
alter table candidates enable row level security;

create policy p_sel on profiles
  for select to authenticated using (true);
create policy p_del on profiles
  for delete to authenticated
  using (is_owner() and id <> auth.uid());

create policy i_all on invites
  for all to authenticated
  using (is_owner()) with check (is_owner());

create policy o_sel on offers
  for select to authenticated using (true);
create policy o_all on offers
  for all to authenticated
  using (is_owner()) with check (is_owner());

create policy n_sel on news
  for select to authenticated using (true);
create policy n_all on news
  for all to authenticated
  using (is_owner()) with check (is_owner());

create policy c_sel on candidates
  for select to authenticated
  using (is_owner() or recruiter_id = auth.uid());
create policy c_ins on candidates
  for insert to authenticated
  with check (recruiter_id = auth.uid());
create policy c_upd on candidates
  for update to authenticated
  using (is_owner() or recruiter_id = auth.uid());
create policy c_del on candidates
  for delete to authenticated
  using (is_owner() or recruiter_id = auth.uid());

insert into storage.buckets(id, name, public)
values('voice-notes', 'voice-notes', true)
on conflict do nothing;

create policy v_read on storage.objects
  for select using (bucket_id = 'voice-notes');
create policy v_ins on storage.objects
  for insert to authenticated
  with check (bucket_id = 'voice-notes');
create policy v_del on storage.objects
  for delete to authenticated
  using (bucket_id = 'voice-notes');

create table notifications(
  id bigserial primary key,
  candidate_id uuid,
  candidate_name text,
  status text,
  offers text[],
  offer text,
  feedback text,
  actor_name text,
  created_at timestamptz default now()
);

alter table notifications enable row level security;

create policy a_sel on notifications
  for select to authenticated using (true);
create policy a_del on notifications
  for delete to authenticated
  using (is_owner());

create function public.notify_candidate()
returns trigger
language plpgsql
security definer
as $$
begin
  if tg_op = 'INSERT'
     or new.status is distinct from old.status
     or new.approved_offers is distinct from old.approved_offers
     or coalesce(new.feedback, '') is distinct from coalesce(old.feedback, '') then
    insert into notifications(
      candidate_id,
      candidate_name,
      status,
      offers,
      offer,
      feedback,
      actor_name
    )
    values(
      new.id,
      new.full_name,
      new.status,
      new.approved_offers,
      new.offer,
      new.feedback,
      (select full_name from profiles where id = auth.uid())
    );
  end if;

  return new;
end
$$;

create trigger trg_notify
after insert or update on candidates
for each row execute function notify_candidate();

do $$
begin
  alter publication supabase_realtime add table public.notifications;
exception
  when others then null;
end
$$;
