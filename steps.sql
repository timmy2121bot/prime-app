-- Run ONCE in Supabase SQL Editor, AFTER setup_all.sql (do not re-run setup_all.sql)
alter table candidates add column if not exists form_done boolean default false, add column if not exists shot_path text, add column if not exists shot_url text;
alter table offers add column if not exists form_link text, add column if not exists template_url text;

insert into offers(name, form_link) values
  ('TPro Talabat Account — Customer Service Representatives – TPro Talabat Account', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('Teleperformance — Airline', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('CENTRO — Customer services', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('Enable — French Monolingual Call Center Agent', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('Teleperformance — Back Office Account', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('WGs — Solar Florida – Experienced Cold Caller (Remote)', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('TTEC — TTEC German Account Outbound Sales Exp', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('TTEC — TTEC French Account CS Exp', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('TTEC — French Account Outbound Sales Exp', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('TTEC — TTEC Spanish Account CS Exp', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('TTEC — TTEC Spanish Account Outbound Sales Exp', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('TTEC — English Customer Service Representative', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('TTEC — TTEC English Account Outbound sales Exp', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('Atian/IGT — German Back Office Specialist', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('Atian/IGT — ATAIN German Travel Account Bilingual (GDS Exp)', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('Atian/IGT — Atain French Travel Advisor (GDS exp)', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('Atian/IGT — Atain English Travel Advisor (GDS exp)', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('Teleperformance — TP Technical Support French account (Voice)', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('Teleperformance — TP Customer Service French account (Canadian Account)', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('Teleperformance — Call Center Representative', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('LTS — Hotel Surveys — Outbound', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('LTS — Sales Agent — Inbound Vacation Packages', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('TTC — Telesales Agent — US Accounts', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('LPM — Sales Agent — Telesales', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('LeadBull — Canadian Telesales Account', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('ACES — Telesales Agent', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('O4U — Female HR Generalist', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('O4U — Telesales', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform'),
  ('O4U — TEAM LEADER OPPORTUNITY', 'https://docs.google.com/forms/d/e/1FAIpQLSdX9wowvKBMNdYfhY2-PMQ0csK7XjQAoc0RlZS044OcY0fD4Q/viewform')
on conflict (name) do update set form_link = excluded.form_link;

create table if not exists post_likes(post_id bigint references news(id) on delete cascade, user_id uuid references profiles(id) on delete cascade default auth.uid(), primary key(post_id,user_id));
create table if not exists post_comments(id bigserial primary key, post_id bigint references news(id) on delete cascade, user_id uuid default auth.uid(), author text, body text not null, parent_id bigint references post_comments(id) on delete cascade, created_at timestamptz default now());
alter table post_comments add column if not exists parent_id bigint references post_comments(id) on delete cascade;
create table if not exists comment_likes(comment_id bigint references post_comments(id) on delete cascade, user_id uuid references profiles(id) on delete cascade default auth.uid(), primary key(comment_id,user_id));
alter table post_likes enable row level security;
alter table post_comments enable row level security;
alter table comment_likes enable row level security;
drop policy if exists l_sel on post_likes;
drop policy if exists l_ins on post_likes;
drop policy if exists l_del on post_likes;
drop policy if exists m_sel on post_comments;
drop policy if exists m_ins on post_comments;
drop policy if exists m_del on post_comments;
drop policy if exists cl_sel on comment_likes;
drop policy if exists cl_ins on comment_likes;
drop policy if exists cl_del on comment_likes;
create policy l_sel on post_likes for select to authenticated using (true);
create policy l_ins on post_likes for insert to authenticated with check (user_id=auth.uid());
create policy l_del on post_likes for delete to authenticated using (user_id=auth.uid());
create policy m_sel on post_comments for select to authenticated using (true);
create policy m_ins on post_comments for insert to authenticated with check (user_id=auth.uid());
create policy m_del on post_comments for delete to authenticated using (user_id=auth.uid() or is_owner());
create policy cl_sel on comment_likes for select to authenticated using (true);
create policy cl_ins on comment_likes for insert to authenticated with check (user_id=auth.uid());
create policy cl_del on comment_likes for delete to authenticated using (user_id=auth.uid());

-- Steps cannot be skipped (enforced in the database, not just the screen)
create or replace function enforce_steps() returns trigger language plpgsql security definer set search_path=public as $$
begin
  if auth.uid() is null then return new; end if;
  if not is_owner() then
    if new.status is distinct from old.status or new.approved_offers is distinct from old.approved_offers
       or coalesce(new.feedback,'')<>coalesce(old.feedback,'') then
      raise exception 'Only the owner can validate candidates';
    end if;
  end if;
  if new.form_done and not coalesce(old.form_done,false)
     and not (old.status in ('Accepted','Interview','Hired') and coalesce(array_length(old.approved_offers,1),0)>0) then
    raise exception 'Step 2 (validation + offer) must be completed first';
  end if;
  if new.shot_url is not null and old.shot_url is null and not coalesce(old.form_done,false) then
    raise exception 'Step 3 (application form) must be completed first';
  end if;
  return new;
end $$;
create trigger trg_steps before update on candidates for each row execute function enforce_steps();

-- Alerts also fire when step 3 / step 4 are completed
create or replace function notify_candidate() returns trigger language plpgsql security definer set search_path=public as $$
declare who text;
begin
  select full_name into who from profiles where id=auth.uid();
  if tg_op='INSERT' then
    insert into notifications(candidate_id,candidate_name,status,offers,offer,feedback,actor_name)
    values(new.id,new.full_name,new.status,new.approved_offers,new.offer,new.feedback,who);
  else
    if new.status is distinct from old.status or new.approved_offers is distinct from old.approved_offers
       or coalesce(new.feedback,'')<>coalesce(old.feedback,'') then
      insert into notifications(candidate_id,candidate_name,status,offers,offer,feedback,actor_name)
      values(new.id,new.full_name,new.status,new.approved_offers,new.offer,new.feedback,who);
    end if;
    if new.form_done and not coalesce(old.form_done,false) then
      insert into notifications(candidate_id,candidate_name,status,offers,offer,feedback,actor_name)
      values(new.id,new.full_name,new.status,new.approved_offers,new.offer,'Step 3 done — application form filled',who);
    end if;
    if new.shot_url is not null and old.shot_url is null then
      insert into notifications(candidate_id,candidate_name,status,offers,offer,feedback,actor_name)
      values(new.id,new.full_name,new.status,new.approved_offers,new.offer,'Step 4 done — screenshot sent',who);
    end if;
  end if;
  return new;
end $$;
