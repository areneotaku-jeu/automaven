# AutoMaven V4 — GitHub Pages + Supabase

## Installation (phone-friendly)
1. In Supabase > SQL Editor > New Query, paste the complete contents of `setup-v4.sql`, then click Run. Execute once only. Existing V3 tables and photo bucket must already exist.
2. In `config.js`, replace `PASTE_YOUR_FULL_sb_publishable_KEY_HERE` with the **full publishable key** (`sb_publishable_...`). Never use `sb_secret_` or service-role keys.
3. Upload **index.html, style.css, script.js, v4.js, config.js** into the root of the existing GitHub `automaven` repository (not inside the AutoMaven-V4 folder). Keep the existing GitHub Pages settings.
4. Wait for deployment, refresh the site, sign in, then test with a clearly marked test listing and a second test account for messaging.

## New features
- Vehicle details modal, photo gallery, contact by email/WhatsApp (when phone number is supplied).
- Authenticated favorites and personal inbox with seller replies.
- Authenticated listing reports (only available to administrators in Supabase, not public).
- Keeps V3 vehicle publishing, seller dashboard and filters.

## Important notes
- `config.js` in this ZIP intentionally contains a placeholder key. You must configure it yourself. The public key is fine in browser code; **never** commit secret keys.
- Messaging is basic, not real-time: reopen the inbox to refresh. WhatsApp requires the seller to enter a valid international phone number; never promise that WhatsApp contact works for arbitrary email addresses.
- V4 is an early prototype, not a production-ready marketplace. Add rate limiting, abuse controls, privacy notice, proper verified sellers, safer contact preferences, admin review and full end-to-end tests before public marketing.
- V3 stores contact details in the car description, which is publicly readable. Do not enter private contact information unless you intend to publish it. Future versions should move contact preferences to a dedicated table.
- Listings with fictitious details should be deleted after testing. No verified seller or secure-payment claims are justified at this stage.
- Premium billing is **not** enabled.
