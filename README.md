# AutoMaven V3 — Supabase + GitHub Pages

1. In Supabase SQL Editor, run `setup-extra.sql` after the previously completed initial database SQL.
2. In `config.js`, replace `PASTE_YOUR_FULL_sb_publishable_KEY_HERE` with your complete **publishable** key. Never put `sb_secret_` or `service_role` in a public repo.
3. In Supabase > Authentication > URL Configuration, set Site URL to `https://areneotaku-jeu.github.io/automaven/` and add the same address under Redirect URLs (or add `https://areneotaku-jeu.github.io/automaven/**`).
4. Upload `index.html`, `style.css`, `script.js`, `config.js` to the **root** of the GitHub repository. Commit changes. Keep `setup-extra.sql` optional (not required by browser).
5. Test sign-up, confirm email if enabled, sign in, publish a car with photos, browse as logged-out visitor, mark sold and delete.

Important: Public listings appear immediately. Fraud moderation, payment verification, seller identity verification, financing and real premium billing are **not implemented**. Photos in the public storage bucket remain accessible to anyone with their URLs even if the listing is later removed; a storage cleanup workflow is needed. Seller contact is stored in the description and is public. Never present demo metrics as real. This is an MVP, not a fully secure production marketplace.
