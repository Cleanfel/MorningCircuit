# Morning Circuit v5.4.1 — Branding & sync indicator cleanup

## Update your GitHub Pages site
1. Open your `cleanfel/MorningCircuit` GitHub repository.
2. Upload and replace **`index.html`, `manifest.webmanifest`, and all three files in `assets`** (`favicon.svg`, `icon-192.png`, `icon-512.png`), and add `assets/logo.svg`. If you prefer, upload all root files and assets in this package.
3. Commit the changes. No Supabase SQL or migration is required. Sign in as usual; account data and game scores are unchanged.
4. Open your existing site on desktop and phone and refresh it. Favicons and installed iPhone Home Screen icons may be cached; if the home-screen icon does not update after some time, remove **only the icon** from the Home Screen and add the site again. Do not erase Safari website data.

## Improvements
- Uses one consistent custom sun-and-checkmark vector mark for the header, browser favicon, and home-screen app icon.
- Fixes an outdated CSS rule that collapsed the cloud sync status into a red oval.
- Displays readable statuses: Synced, Syncing…, Saving…, Offline, Sync issue.
- Click the sync badge to open account details and **Sync now**.
- No changes to the game order, notes, Supabase credentials, account data, or score system.

## Suggested GitHub commit
**Title:** Unify app logo and clarify cloud sync status

**Description:**
- Match the website logo, favicon, and Home Screen app icon.
- Fix the collapsed red sync indicator in the header.
- Add clear synced, saving, offline, and error statuses with a details shortcut.
- Preserve existing progress, scores, preferences, and Supabase sync.
