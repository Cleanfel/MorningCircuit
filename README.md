# Morning Circuit v2.2.6

Your 54-game daily corkboard, with private Supabase sync and an optional Scorebook. All original game links and existing user data are preserved.

## Install on GitHub Pages

1. In Supabase → SQL Editor, run `supabase-v2.2.6.sql` **before** uploading the new website. This adds a `skipped` flag to daily game results without deleting scores or progress.
2. In the existing GitHub `cleanfel/MorningCircuit` repository, replace the root `index.html` with the new one. You can keep `games.json`, `manifest.webmanifest`, and `assets/` as they are; this package also includes the existing assets for convenience.
3. Commit and allow GitHub Pages to deploy. Visit `https://cleanfel.github.io/MorningCircuit/` on desktop and phone and refresh. You may need to close/reopen your Home Screen web app.
4. Confirm you still see the correct completed count, test a Skip on phone, and check that it appears on desktop.

No Supabase password or service role key belongs in GitHub. The existing publishable browser key is intentionally public. Individual rows remain protected by your existing Supabase Row Level Security policies.

## New controls

- **Search games:** Above corkboard. Press `/` from outside a text field on desktop. Search and Show Unfinished work together.
- **Skip:** A small action beside unfinished games. Skipped notes become compact and remain in position; Skip does not count as Done or affect score averages.
- **Quick Undo:** Appears in the confirmation message briefly after Done and Skip. You can also manually unskip any skipped note.
- **Sounds:** Toggle at the bottom. Enabled by default; sounds are subtle and only play after a user action (Done or saving a score). This is a device-local setting, not synced between devices.
- **Version label:** `v2.2.6` beneath the site name in the sticky header.

## Notes

- A fresh day's completion and skipped state begins at your device's local midnight.
- This is still a static GitHub Pages website, with Supabase handling only account data.
- Existing scores are saved; score entry stays optional.
- Game pages open as before, and Morning Circuit does not change the mobile keyboard behavior of external games.
