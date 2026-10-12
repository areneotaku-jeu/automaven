# AutoMaven — free starter marketplace

## Deploy on GitHub Pages
1. Create a public GitHub repository (for example `automaven`).
2. Upload `index.html`, `style.css`, `script.js`, `config.js` to the root. (`schema.sql` and README can also be uploaded.)
3. GitHub repository > Settings > Pages > Deploy from a branch > `main` > `/ (root)` > Save.

## Enable real user accounts and seller listings
1. Create a free Supabase project at https://supabase.com.
2. Open SQL Editor, paste the contents of `schema.sql`, and run it **once**.
3. In Project Settings > API, copy the Project URL and **publishable / anon** key into `config.js` (never a secret or service_role key).
4. In Authentication > URL Configuration, set Site URL to your GitHub Pages address and add it as a redirect URL.
5. In Authentication > Providers > Email, enable Email. Decide whether users must confirm their email before logging in.
6. Upload updated `config.js` to GitHub. Wait for Pages to rebuild.

## Features
Responsive English-language marketplace, public browsing, filters, Supabase email signup/login, immediate self-service posting, seller dashboard with deletion, seller contact links. Without Supabase settings, sample listings appear as **samples** and signup/posting is disabled.

## Before real commercial launch
This is a starter, not a production-ready business. Add content moderation, abuse/rate limiting, spam detection, seller verification, privacy policy and terms, photo uploads/storage, editing/sold status UI, reporting, secure payment integration, and compliance with applicable US laws. No real financing or premium billing is implemented. Seller contact info is public. Demo listings are not real inventory. Do not claim user counts, security guarantees, or seller verification you have not established.
