-- Joinly Daily Quest — tabela do synchronizacji progresu
-- Wklej w Supabase SQL Editor i uruchom.

create table if not exists public.quest_progress (
  user_id uuid primary key references auth.users(id) on delete cascade,
  progress jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.quest_progress enable row level security;

drop policy if exists "Users can select own quest progress" on public.quest_progress;
drop policy if exists "Users can insert own quest progress" on public.quest_progress;
drop policy if exists "Users can update own quest progress" on public.quest_progress;
drop policy if exists "Users can delete own quest progress" on public.quest_progress;

create policy "Users can select own quest progress"
on public.quest_progress
for select
to authenticated
using (auth.uid() = user_id);

create policy "Users can insert own quest progress"
on public.quest_progress
for insert
to authenticated
with check (auth.uid() = user_id);

create policy "Users can update own quest progress"
on public.quest_progress
for update
to authenticated
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

create policy "Users can delete own quest progress"
on public.quest_progress
for delete
to authenticated
using (auth.uid() = user_id);
