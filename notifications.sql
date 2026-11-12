-- Run once in Supabase SQL Editor (after schema.sql)
create table notifications(
  id bigserial primary key, candidate_id uuid, candidate_name text, status text,
  offers text[], offer text, feedback text, actor_name text, created_at timestamptz default now());
alter table notifications enable row level security;
create policy a_sel on notifications for select to authenticated using (true);
create policy a_del on notifications for delete to authenticated using (is_owner());

create function notify_candidate() returns trigger language plpgsql security definer as $$
begin
  if tg_op='INSERT'
     or new.status is distinct from old.status
     or new.approved_offers is distinct from old.approved_offers
     or coalesce(new.feedback,'') is distinct from coalesce(old.feedback,'') then
    insert into notifications(candidate_id,candidate_name,status,offers,offer,feedback,actor_name)
    values(new.id,new.full_name,new.status,new.approved_offers,new.offer,new.feedback,
           (select full_name from profiles where id=auth.uid()));
  end if;
  return new;
end $$;
create trigger trg_notify after insert or update on candidates for each row execute function notify_candidate();

alter publication supabase_realtime add table notifications;
