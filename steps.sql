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



-- Generated from PRIME_Active_Offers_Confirmations.xlsx
alter table offers add column if not exists workflow_process text;
alter table offers add column if not exists interview_schedule text;
alter table offers add column if not exists interview_type text;
alter table offers add column if not exists confirmation_template text;
alter table offers add column if not exists workflow_notes text;
alter table candidates add column if not exists interview_date date;
alter table candidates add column if not exists interview_time time;
alter table candidates add column if not exists confirmation_message text;
alter table candidates add column if not exists attendance_status text default 'pending';
alter table candidates add column if not exists site_confirmed boolean default false;

insert into offers(name, workflow_process, interview_schedule, interview_type, confirmation_template, workflow_notes) values
('TPro Talabat Account🤍🔥 — Customer Service Representatives – TPro Talabat Account', 'Voice Note Validation → Schedule Site Interview', '—', 'Online Interview', 'Online Interview.', 'Training Details:
- Duration: 6 weeks.
- Total Training Package: EGP 7,000.
- 70% paid upon successful training completion.
- Remaining 30% paid during the second month along with the basic salary.'),
('Teleperformance🇬🇧 — Airline 🚀🔥', 'Voice Note Validation → Schedule Site Interview', 'From Sunday to Thursday 11 AM to 5 PM', 'Site / In-person Interview', 'Hello ,

I hope you are doing well. I am writing to confirm your interview for the *Customer Service position at Teleperformance (chat & Emil)

scheduled on: *****day*****
at *****time*****

As a quick reminder, the interview will be held at 
📍 📍Address 
‎*Tp English b1

 Teleperformance Egypt - Cairo - One Kattameya

 https://g.co/kgs/n9F4xZW

- Don’t forget to tell them that you are recruited by Carrer community and write on the application form

Reply with confirmed 👍 if you will attend on time or want me to reschedule

if you need any further information from me beforehand, please do not hesitate to let me know.

Thank you once again for considering this opportunity.', '—'),
('CENTRO 🔥🤍 — Customer services', 'Voice Note Validation → Online Interview', '—', 'Online Interview', 'Online Interview.', '—'),
('Enable 🇨🇵 — French Monolingual Call Center Agent', 'Voice Note Validation → Schedule Site Interview', 'From Monday to Thursday 10 AM to 4 PM', 'Site / In-person Interview', 'Hello Dear,

We are confirming your dedicated interview slot in Enable tomorrow. We''ve reserved this time just for you!

📅 Date:
⏰ Time: Between 10:00 AM – 4:00 PM (Sharp)
👔 Dress Code: Smart-Casual

📍 Address:
Enable Office
🔗 Location: Click here 
https://maps.app.goo.gl/NhXQf4CFzrWoWx1d9?g_st=aw

⚠️ Please make sure to bring your National ID with you.

✅ Reply with "Confirmed" if you’re attending the interview at the stated time above.

✨ Don’t forget to tell them that you are recruited by *Career community* and make sure to write it on the application form.

Plz make sure to attend on time cuz they appreciate commitments and punctuality.
Wish you the best of luck! 🍀.', '—'),
('Teleperformance 🇬🇧 — Back Office Account', 'Voice Note Validation → Schedule Site Interview', 'From Sunday to Thursday 11 AM to 5 PM', 'Site / In-person Interview', 'Hello ,

I hope you are doing well. I am writing to confirm your interview for the *Customer Service position at Teleperformance (chat & Emil)

scheduled on: *****day*****
at *****time*****

As a quick reminder, the interview will be held at 
📍 📍Address 
‎*Tp English b1

 Teleperformance Egypt - Cairo - One Kattameya

 https://g.co/kgs/n9F4xZW

- Don’t forget to tell them that you are recruited by Carrer community and write on the application form

Reply with confirmed 👍 if you will attend on time or want me to reschedule

if you need any further information from me beforehand, please do not hesitate to let me know.

Thank you once again for considering this opportunity.', 'Account Nature: The account is related to digital platforms and services, with a nature similar to Netflix, WhatsApp, Shahid, and other similar services.'),
('WGs🔥 — Solar Florida – Experienced Cold Caller (Remote)', 'Client Validation → Script → Online Interview', '.', 'Online Interview', 'Online Interview.', 'PC or Laptop required
USB Headset only
Stable internet connection; LAN cable is mandatory'),
('TTEc  🇩🇪 — TTEC German Account Outbound Sales Exp 🇩🇪', 'Voice Note Validation → Schedule Site Interview', 'From Monday to Thursday 11 AM to 4 PM', 'Site / In-person Interview', 'Hello Dear,

We are confirming your dedicated interview slot in TTEC tomorrow. We''ve reserved this time just for you!

📅 Date:
⏰ Time: Between 11:00 AM – 4:00 PM (Sharp)
👔 Dress Code: Smart-Casual

📍 Address:
TTEC Office
🔗 Location: Click here 
https://maps.app.goo.gl/HBHLJSy4XxejTmXA8?g_st=iw

⚠️ Please make sure to bring your National ID with you.

✅ Reply with "Confirmed" if you’re attending the interview at the stated time above.

✨ Don’t forget to tell them that you are recruited by Career Community and make sure to write it on the application form.

Plz make sure to attend on time cuz they appreciate commitments and punctuality.
Wish you the best of luck! 🍀.', '📅 Work Schedule:
☀️ Rotational Shift
🕐 Shifts: Morning, Night, Overnight
📆 Working Days: 5 working days and 2 days off 
⏰ Hours: 8 hours and 1 hr break'),
('TTEC🇨🇵 — TTEC French Account CS Exp 🇨🇵', 'Voice Note Validation → Schedule Site Interview', 'From Monday to Thursday 11 AM to 4 PM', 'Site / In-person Interview', 'Hello Dear,

We are confirming your dedicated interview slot in TTEC tomorrow. We''ve reserved this time just for you!

📅 Date:
⏰ Time: Between 11:00 AM – 3:00 PM (Sharp)
👔 Dress Code: Smart-Casual

📍 Address:
TTEC Office
🔗 Location: Click here 
https://maps.app.goo.gl/HBHLJSy4XxejTmXA8?g_st=iw

⚠️ Please make sure to bring your National ID with you.

✅ Reply with "Confirmed" if you’re attending the interview at the stated time above.

✨ Don’t forget to tell them that you are recruited by Career Community and make sure to write it on the application form.

Plz make sure to attend on time cuz they appreciate commitments and punctuality.
Wish you the best of luck! 🍀.', '📅 Work Schedule:
☀️ Rotational Shift
🕐 Shifts: Morning, Night, Overnight
📆 Working Days: 5 working days and 2 days off 
⏰ Hours: 9 hours'),
('TTEC🇨🇵 — French Account Outbound Sales Exp 🇨🇵', 'Voice Note Validation → Schedule Site Interview', 'From Monday to Thursday 11 AM to 4 PM', 'Site / In-person Interview', 'Hello Dear,

We are confirming your dedicated interview slot in TTEC tomorrow. We''ve reserved this time just for you!

📅 Date:
⏰ Time: Between 11:00 AM – 4:00 PM (Sharp)
👔 Dress Code: Smart-Casual

📍 Address:
TTEC Office
🔗 Location: Click here 
https://maps.app.goo.gl/HBHLJSy4XxejTmXA8?g_st=iw

⚠️ Please make sure to bring your National ID with you.

✅ Reply with "Confirmed" if you’re attending the interview at the stated time above.

✨ Don’t forget to tell them that you are recruited by Carrer community and make sure to write it on the application form.

Plz make sure to attend on time cuz they appreciate commitments and punctuality.
Wish you the best of luck! 🍀.', 'Work Schedule:
☀️ Rotational Shift
🕐 Shifts: Morning, Night, Overnight
📆 Working Days: 5 working days and 2 days off 
⏰ Hours: 8 hours and 1 hr break'),
('TTEC🇪🇸 — TTEC Spanish Account CS exp 🇪🇸', 'Voice Note Validation → Schedule Site Interview', 'From Monday to Thursday 11 AM to 4 PM', 'Site / In-person Interview', 'Hello Dear,

We are confirming your dedicated interview slot in TTEC tomorrow. We''ve reserved this time just for you!

📅 Date:
⏰ Time: Between 11:00 AM – 3:00 PM (Sharp)
👔 Dress Code: Smart-Casual

📍 Address:
TTEC Office
🔗 Location: Click here 
https://maps.app.goo.gl/HBHLJSy4XxejTmXA8?g_st=iw

⚠️ Please make sure to bring your National ID with you.

✅ Reply with "Confirmed" if you’re attending the interview at the stated time above.

✨ Don’t forget to tell them that you are recruited by Career Community and make sure to write it on the application form.

Plz make sure to attend on time cuz they appreciate commitments and punctuality.
Wish you the best of luck! 🍀.', '📅 Work Schedule:
☀️ Rotational Shift
🕐 Shifts: Morning, Night, Overnight
📆 Working Days: 5 working days and 2 days off 
⏰ Hours: 8 hours and 1 hr break'),
('TTEC🇪🇸 — TTEC Spanish Account Outbound Sales Exp 🇪🇸', 'Voice Note Validation → Schedule Site Interview', 'From Monday to Thursday 11 AM to 4 PM', 'Site / In-person Interview', 'Hello Dear,

We are confirming your dedicated interview slot in TTEC tomorrow. We''ve reserved this time just for you!

📅 Date:
⏰ Time: Between 11:00 AM – 4:00 PM (Sharp)
👔 Dress Code: Smart-Casual

📍 Address:
TTEC Office
🔗 Location: Click here 
https://maps.app.goo.gl/HBHLJSy4XxejTmXA8?g_st=iw

⚠️ Please make sure to bring your National ID with you.

✅ Reply with "Confirmed" if you’re attending the interview at the stated time above.

✨ Don’t forget to tell them that you are recruited by Career Community and make sure to write it on the application form.

Plz make sure to attend on time cuz they appreciate commitments and punctuality.
Wish you the best of luck! 🍀.', '📅 Work Schedule:
☀️ Rotational Shift
🕐 Shifts: Morning, Night, Overnight
📆 Working Days: 5 working days and 2 days off 
⏰ Hours: 8 hours and 1 hr break'),
('TTEC 🇬🇧 — English Customer Service Representative', 'Voice Note Validation → Schedule Site Interview', 'From Monday to Thursday 11 AM to 4 PM', 'Site / In-person Interview', 'Hello Dear,

We are confirming your dedicated interview slot in TTEC tomorrow. We''ve reserved this time just for you!

📅 Date:
⏰ Time: Between 11:00 AM – 5:00 PM (Sharp)
👔 Dress Code: Smart-Casual

📍 Address:
TTEC Office
🔗 Location: Click here 
https://maps.app.goo.gl/HBHLJSy4XxejTmXA8?g_st=iw

⚠️ Please make sure to bring your National ID with you.

✅ Reply with "Confirmed" if you’re attending the interview at the stated time above.

✨ Don’t forget to tell them that you are recruited by MOSLA Pioneers and make sure to write it on the application form.

Plz make sure to attend on time cuz they appreciate commitments and punctuality.
Wish you the best of luck! 🍀.', 'Ready-to-join date and interview schedule are subject to the current hiring campaign.'),
('TTEc 🇬🇧 — TTEC English Account Outbound sales Exp 🇬🇧', 'Voice Note Validation → Schedule Site Interview', 'From Monday to Thursday 11 AM to 4 PM', 'Site / In-person Interview', 'Hello Dear,

We are confirming your dedicated interview slot in TTEC tomorrow. We''ve reserved this time just for you!

📅 Date:
⏰ Time: Between 11:00 AM – 3:00 PM (Sharp)
👔 Dress Code: Smart-Casual

📍 Address:
TTEC Office
🔗 Location: Click here 
https://maps.app.goo.gl/HBHLJSy4XxejTmXA8?g_st=iw

⚠️ Please make sure to bring your National ID with you.

✅ Reply with "Confirmed" if you’re attending the interview at the stated time above.

✨ Don’t forget to tell them that you are recruited by MOSLA Pioneers and make sure to write it on the application form.

Plz make sure to attend on time cuz they appreciate commitments and punctuality.
Wish you the best of luck! 🍀.', '📅 Work Schedule:
☀️ Rotational Shift
🕐 Shifts: Morning, Night, Overnight
📆 Working Days: 5 working days and 2 days off 
⏰ Hours: 8 hours and 1 hr break'),
('Atian/IGT🇩🇪 — German Back Office Specialist 🇩🇪🔥', 'Voice Note Validation → Schedule Site Interview', 'From Monday to Thursday 11 AM to 4 PM', 'Site / In-person Interview', '""""""Hello Dear,
We are confirming your interview in Atian Company tomorrow insha’allah .
(German Account)
Date: 
Time:11 to 4
Dress Code: Smart Casual 

 Location will be in a link below 

Please reply with """"""""""""""""Confirmed"""""""""""""""" before 8pm 

Address 

1st floor, Vodafone building, Maadi Technology Park, Al Lasilki, Ezbet Fahmy, Maadi, Cairo Governorate
https://maps.app.goo.gl/XZqb1QTbFtHGV5ye7?g_st=aw

- Don’t forget to tell them that you are recruited by “career community “ and write that on the application.

Thank you once again for considering this opportunity .', 'Work Schedule:
☀️ Rotational Shift
🕐 Shifts: Morning, Night, Overnight
📆 Working Days: 5 working days and 2 days off 
⏰ Hours: 8 hours and 1 hr break'),
('Atian/IGT🇩🇪 — ATAIN German Travel Account Bilingual (GDS Exp) 🇩🇪', 'Voice Note Validation → Schedule Site Interview', 'From Monday to Thursday 11 AM to 4 PM', 'Site / In-person Interview', '""""""Hello Dear,
We are confirming your interview in Atian Company tomorrow insha’allah .
(German Account)
Date: 
Time:11 to 4
Dress Code: Smart Casual 

 Location will be in a link below 

Please reply with """"""""""""""""Confirmed"""""""""""""""" before 8pm 

Address 

1st floor, Vodafone building, Maadi Technology Park, Al Lasilki, Ezbet Fahmy, Maadi, Cairo Governorate
https://maps.app.goo.gl/XZqb1QTbFtHGV5ye7?g_st=aw

- Don’t forget to tell them that you are recruited by “career community “ and write that on the application.

Thank you once again for considering this opportunit', '📅 Work Schedule:
☀️ Rotational Shift
🕐 Shifts: Morning, Night, Overnight
📆 Working Days: 5 working days and 2 days off 
⏰ Hours: 8 hours and 1 hr break'),
('Atian/IGT🇨🇵 — Atain French Travel Advisor (GDS exp) 🇫🇷', 'Voice Note Validation → Schedule Site Interview', 'From Monday to Thursday 11 AM to 4 PM', 'Site / In-person Interview', '— (no confirmation message set)', 'Work Schedule:
☀️ Rotational Shift
🕐 Shifts: Morning, Night, Overnight
📆 Working Days: 5 working days and 2 days off 
⏰ Hours: 8 hours and 1 hr break'),
('Atian/IGT  🇬🇧 — Atain English Travel Advisor (GDS exp) 🇬🇧', 'Voice Note Validation → Schedule Site Interview', 'From Monday to Thursday 11 AM to 4 PM', 'Site / In-person Interview', 'Hello Dear,
We are confirming your interview in Atian Company tomorrow insha’allah .
(English Account)
Date: 
Time:11 to 4
Dress Code: Smart Casual 

 Location will be in a link below 

Please reply with """"""""""""""""Confirmed"""""""""""""""" before 8pm 

Address 

1st floor, Vodafone building, Maadi Technology Park, Al Lasilki, Ezbet Fahmy, Maadi, Cairo Governorate
https://maps.app.goo.gl/XZqb1QTbFtHGV5ye7?g_st=aw

- Don’t forget to tell them that you are recruited by “career community “ and write that on the application.

Thank you once again for considering this opportunity .', '📅 Work Schedule:
☀️ Rotational Shift
🕐 Shifts: Morning, Night, Overnight
📆 Working Days: 5 working days and 2 days off 
⏰ Hours: 8 hours and 1 hr break'),
('Teleperformance🇨🇵 — TP Technical Support French account (Voice)', 'Voice Note Validation → Schedule Site Interview', 'From Sunday to Thursday 11 AM to 5 PM', 'Site / In-person Interview', 'Hello ,

I hope you are doing well. I am writing to confirm your interview for the *Customer Service position at Teleperformance ( French Account )* 

scheduled on: *day*
at *time*

As a quick reminder, the interview will be held at 
📍 📍Address 
‎*Tp french account*

 Teleperformance Egypt - Cairo - One Kattameya

 https://g.co/kgs/n9F4xZW

- Don’t forget to tell them that you are recruited by MOSLA Pioneers“” and write on the application form

*Reply with confirmed 👍 if you will attend on time or want me to reschedule*

if you need any further information from me beforehand, please do not hesitate to let me know.

Thank you once again for considering this opportunity .', '📅 Work Schedule:
☀️ Rotational Shift
🕐 Shifts: Night, Overnight
📆 Working Days: 5 working days and 2 days off 
⏰ Hours: 8 hours and 1 hr break'),
('Teleperformance🇨🇵 — TP Customer Service French account (Canadian Account 🇨🇦)', 'Voice Note Validation → Schedule Site Interview', 'From Sunday to Thursday 11 AM to 5 PM', 'Site / In-person Interview', 'Hello ,

I hope you are doing well. I am writing to confirm your interview for the *Customer Service position at Teleperformance ( French Account )* 

scheduled on: *day*
at *time*

As a quick reminder, the interview will be held at 
📍 📍Address 
‎*Tp french account*

 Teleperformance Egypt - Cairo - One Kattameya

 https://g.co/kgs/n9F4xZW

- Don’t forget to tell them that you are recruited by MOSLA Pioneers“” and write on the application form

*Reply with confirmed 👍 if you will attend on time or want me to reschedule*

if you need any further information from me beforehand, please do not hesitate to let me know.

Thank you once again for considering this opportunity .', '📅 Work Schedule:
☀️ Rotational Shift
🕐 Shifts: Night, Overnight
📆 Working Days: 5 working days and 2 days off 
⏰ Hours: 9 hrs , 1 hour break'),
('Teleperformance 🇬🇧 — Call Center Representative', 'Voice Note Validation → Schedule Site Interview', 'From Sunday to Thursday 10 AM to 5 PM', 'Site / In-person Interview', 'Hello [Candidate Name],

I hope you are doing well. I am writing to confirm your interview for the *Teleperformance English Customer Service account 🇬🇧 position at Teleperformance*

scheduled on: *[Day]*
at *[Time]*

As a quick reminder, the interview will be held at
📍 Cairo - Plaza
📍 https://g.co/kgs/yWVdUpX
- Don''t forget to tell them that you are recruited by MOSLA Pioneers and write on the application form

*Reply with confirmed 👍 if you will attend on time or want me to reschedule*

If you need any further information from me beforehand, please do not hesitate to let me know.

Thank you once again for considering this opportunity.', 'Males need completed military service or official postponement/exemption documentation.'),
('LTS — Hotel Surveys — Outbound', 'Voice Note Validation → Call IntervieW', '.', 'Site / In-person Interview', 'Call interview.', 'Target: 11 successful transfers/day. Candidate must not have applied to LTS during the previous 3 months.'),
('LTS — Sales Agent — Inbound Vacation Packages', 'Voice Note Validation → Call Interview', '.', 'Site / In-person Interview', 'Call interview.', 'Company validation is during official working hours. Candidate must agree to the validation process.'),
('TTC — Telesales Agent — US Accounts 🇺🇸', 'Voice Note Validation → Schedule Site Interview', 'Monday, Tuesday, and Wednesday 3 PM to 8 PM', 'Site / In-person Interview', 'Hello Dear,

We are confirming your interview with TTC.

📅 Date: 
(((((((ميعاد الانترڤيو))))))))) 
🕒 Interview Time: between 3:00 PM and 8:00 PM
💼 Position: Telesales
👔 Dress Code: Smart Casual

📍 Location:
Google Maps Link
Location: 
https://maps.app.goo.gl/WN76i21cPe9GoVFf6

34 Makram Ebeid, Al Manteqah as Sadesah, Nasr City, Cairo Governorate
6th floor , On right

Please reply with “Confirmed” if you’ll attend during the mentioned time.

👉 Don’t forget to mention that you were recruited by (Prime)  and write it clearly on the application form.

⏰ Kindly make sure to attend on time, as they highly appreciate commitment and punctuality.

Wishing you the best of luck!', 'Friendly collaborative environment.'),
('LPM — Sales Agent — Telesales', 'Voice Note Validation → Schedule Site Interview', 'Monday, Tuesday, and Wednesday from 7 PM to 9 PM', 'Site / In-person Interview', 'LPM Interview Confirmation ✅

Hello, this is HR …… from Prime Agency 

Congratulations! 🎉 Your profile has been selected to move forward in the recruitment process.

📌 Interview Details:

* Interview Days:
* Interview Time: 

* Location Link: """"""""""""📌 https://maps.app.goo.gl/3HrgwQy4rJGErkX9A?g_st=ac                                        

Please make sure to arrive on time
Don''t forget the agency''s name (prime) 


We wish you the best of luck! 🍀', 'Drop-off points: October • Zayed • El Haram • El Mohandseen.'),
('LeadBull — Canadian Telesales Account', 'Voice Note Validation → Schedule Site Interview', 'Thursday and Friday From 8 PM to 10 PM', 'Site / In-person Interview', 'Hello!

Your interview with LeadBull has been successfully scheduled.

📅 Interview Date:  ................ 
⏰ Interview Time: Between 8:00 PM – 10:00 PM (Sharp)

📍 Location:
LeadBull Office – Zahraa El Maadi

Compound Ashgar Darna, Building B19, in front of the main gate. Zahraa el Maadi
                                                                                                                                                                                     https://maps.app.goo.gl/SKZHRHsYNo5htKDF9?g_st=aw


✅ Kindly reply with “Confirmed” to confirm your attendances 

We wish you the best of luck and look forward to meeting you!', 'Both females and males accepted.'),
('ACES — Telesales Agent', 'Voice note validation → Company Contacts Candidate to Schedule On-site Interview', '.', 'Site / In-person Interview', 'Call interview.', 'Training: 2 weeks. Female door-to-door areas include Nasr City, Masr El Gedida, Zaytoun, Heliopolis, Gesr Suez, Sheraton and Nozha.'),
('O4U — Female HR Generalist', 'Voice Note Validation → Client Validation → Schedule Site Interview', 'From Monday to Friday 12:45 PM to 6 PM', 'Site / In-person Interview', '"" """"""""""""Hello!

Your interview with O4U has been successfully scheduled.

📅 Interview Date:  ................ 
⏰ Interview Time: Between 12:45 PM – 6:00 PM 

📍 Location:
 Address:
Maadi, Cairo.
شارع260
:عمارة86أ
الدور3
بجانب صيدلية هينار
Location: https://maps.app.goo.gl/hPFg8zmJW3UXC2d2A?g_st=ic""

Don''t forget the agency''s name (prime)


✅ Kindly reply with “Confirmed” to confirm your attendances 

We wish you the best of luck and look forward to meeting you!', 'Working Hours:
Monday to Friday
12:15 PM – 8:30 PM
Fixed shift
Saturday & Sunday: Off'),
('O4U — Telesales', 'Voice Note Validation → Client Validation → Schedule Site Interview', 'From Monday to Friday 12:45 PM to 6 PM', 'Site / In-person Interview', '"" """"""""""""Hello!

Your interview with O4U has been successfully scheduled.

📅 Interview Date:  ................ 
⏰ Interview Time: Between 12:45 PM – 6:00 PM 

📍 Location:
 Address:
Maadi, Cairo.
شارع260
:عمارة86أ
الدور3
بجانب صيدلية هينار
Location: https://maps.app.goo.gl/hPFg8zmJW3UXC2d2A?g_st=ic""

Don''t forget the agency''s name (prime)


✅ Kindly reply with “Confirmed” to confirm your attendances 

We wish you the best of luck and look forward to meeting you!', 'Working Hours:
Monday to Friday
12:15 PM – 8:30 PM
Fixed shift
Saturday & Sunday: Off'),
('O4U — TEAM LEADER OPPORTUNITY', 'Voice Note Validation → Client Validation → Schedule Site Interview', 'From Monday to Friday 12:45 PM to 6 PM', 'Site / In-person Interview', '"" """"""""""""Hello!

Your interview with O4U has been successfully scheduled.

📅 Interview Date:  ................ 
⏰ Interview Time: Between 12:45 PM – 6:00 PM 

📍 Location:
 Address:
Maadi, Cairo.
شارع260
:عمارة86أ
الدور3
بجانب صيدلية هينار
Location: https://maps.app.goo.gl/hPFg8zmJW3UXC2d2A?g_st=ic""

Don''t forget the agency''s name (prime)


✅ Kindly reply with “Confirmed” to confirm your attendances 

We wish you the best of luck and look forward to meeting you!', 'Working Hours:
Monday to Friday
12:15 PM – 8:30 PM
Fixed shift
Saturday & Sunday: Off'),
('TPro Talabat Account🤍🔥 — Customer Service Representatives – TPro Talabat Account', 'Voice Note Validation → Schedule Site Interview', '—', 'Online Interview', 'Online Interview.', 'Training Details:
- Duration: 6 weeks.
- Total Training Package: EGP 7,000.
- 70% paid upon successful training completion.
- Remaining 30% paid during the second month along with the basic salary.'),
('CENTRO 🔥🤍 — Customer services', 'Voice Note Validation → Online Interview', '—', 'Online Interview', 'Online Interview.', '—'),
('WGs🔥 — Solar Florida – Experienced Cold Caller (Remote)', 'Client Validation → Script → Online Interview', '.', 'Online Interview', 'Online Interview.', 'PC or Laptop required
USB Headset only
Stable internet connection; LAN cable is mandatory')
on conflict (name) do update set workflow_process=excluded.workflow_process, interview_schedule=excluded.interview_schedule, interview_type=excluded.interview_type, confirmation_template=excluded.confirmation_template, workflow_notes=excluded.workflow_notes;
