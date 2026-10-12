-- Run in Supabase SQL Editor. Public can read active listings; only owners can edit their own.
create extension if not exists pgcrypto;
create table if not exists public.listings (
 id uuid primary key default gen_random_uuid(),
 seller_id uuid not null references auth.users(id) on delete cascade,
 make text not null check (char_length(make) between 1 and 60),
 model text not null check (char_length(model) between 1 and 80),
 year integer not null check (year between 1950 and 2027),
 price numeric(12,2) not null check (price > 0 and price <= 10000000),
 mileage integer not null check (mileage >= 0),
 location text not null check (char_length(location) between 1 and 120),
 contact text not null check (char_length(contact) between 3 and 120),
 image_url text,
 description text default '',
 status text not null default 'active' check (status in ('active','sold')),
 created_at timestamptz not null default now()
);
alter table public.listings enable row level security;
create policy "Read active listings" on public.listings for select using (status = 'active' or auth.uid() = seller_id);
create policy "Seller can publish" on public.listings for insert to authenticated with check (auth.uid() = seller_id);
create policy "Seller can update" on public.listings for update to authenticated using (auth.uid() = seller_id) with check (auth.uid() = seller_id);
create policy "Seller can delete" on public.listings for delete to authenticated using (auth.uid() = seller_id);
create index if not exists listings_created_at_idx on public.listings(created_at desc);
create index if not exists listings_seller_idx on public.listings(seller_id);
