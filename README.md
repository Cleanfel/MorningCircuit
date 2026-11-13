# Morning Circuit

A cozy, mobile-friendly corkboard for your daily puzzles, with 54 games, optional scores, a separate Scorebook, and private cross-device synchronization.

**Current release:** `v2.2.8`  
**Website:** https://cleanfel.github.io/MorningCircuit/  
**Version history:** [CHANGELOG.md](CHANGELOG.md)

## Deploying to GitHub Pages

1. Open the `cleanfel/MorningCircuit` GitHub repository.
2. Upload the contents of this ZIP to the **repository root**, replacing matching files such as `index.html`. Keep `assets/` and `manifest.webmanifest` in their existing locations.
3. Commit the changes. GitHub Pages will republish from the configured branch.
4. Reopen the site on desktop and mobile. You may need to close and reopen the phone's Home Screen app to load the new version.

The old `games.json` is not needed: the current game list is embedded in `index.html`, so the deployment package intentionally omits it. If you still have an old `games.json` in the repository, you may remove it.

The root `favicon.ico` and `assets/favicon-32.png` support browsers and bookmark surfaces that cache or prefer raster favicons. The package contains only website assets and documentation. **Supabase SQL migrations are distributed separately, not inside this deployment ZIP.** Dark Mode uses the existing board preferences column and requires no SQL migration. If your Supabase project is already up to date and syncing correctly, do not rerun old migrations. For a fresh installation, use the appropriate database setup/migration scripts for the features you plan to enable.

## Daily use

- **Play:** Opens the linked game. **Done:** Marks it complete; an optional score can be added afterward.
- **Skip for Today:** Temporarily sets a game aside without counting it as completed.
- **Search:** Finds a game within the board; press `/` to focus search on desktop.
- **Show Unfinished / Show All:** Controls visibility without deleting history.
- **Scorebook:** Shows score history, comparable averages, trends, and activity.
- **Arrange Games:** Open the gear in the sticky header, then choose **Arrange games** at the bottom of Desk Settings; the dialog closes automatically and jumps to the organizer. Hidden results remain saved.
- **Desk Settings:** Tap the gear beside Stats and the account button. Light, Dark, or System appearance, compact notes, gentle sounds, and Reduce Motion all live in a small, dismissible dialog. Close it with ×, Escape, or by tapping the backdrop.
- **App and browser icons:** Matching daytime and nighttime variants are available; iOS may cache an icon installed before a theme change.

## Accounts and data

The static website is hosted by GitHub Pages. Supabase handles account authentication and synced account data. Guest use is supported through local browser storage. Completed and skipped statuses begin fresh each day based on the device's local date.

Never commit a Supabase database password, service role key, or secret API key. The site's publishable browser key is intentionally public; account data must remain protected by Supabase Row Level Security policies.
