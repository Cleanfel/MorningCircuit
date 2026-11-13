# Morning Circuit — Changelog

A running history of Morning Circuit, a cozy daily-puzzle corkboard and Scorebook.

**Current release:** `v2.2.8`  
**Versioning:** `MAJOR.MINOR.PATCH` — major releases mark a substantial change to the experience; minor releases add meaningful capabilities; patches refine, polish, or fix what's already there.

> **Historical naming note:** Early development files used a different version sequence (including labels such as “v5.4.1”). The release numbers below are the agreed, retrospective canonical history. Some adjacent milestones were shipped together, rather than as separate deployments.

---

## v2 — Statistics, personalization & polish

### [2.2.8] — Morning Desk & Settings Polish
**Patch · Current**
- Added a subtle, coffee-warmed light-wood desk texture, with faint wood grain and a delicate cup-ring detail; the lamplit dark-wood theme remains unchanged.
- Moved Desk Settings from the footer into a compact, accessible modal opened by a gear in the sticky navigation, between Stats and the account controls.
- Grouped Arrange Games at the bottom of Desk Settings; selecting it closes the modal, returns from Scorebook if necessary, and scrolls directly to the game organizer.
- Added accessible dialog dismissal via close button, backdrop, and Escape, plus keyboard focus management and scrolling support on small screens.
- Preserved the current scoring, guest and cloud data, theme sync, game order, and all existing 54 game URLs. No database changes required.
- Kept the deploy package lean by omitting the unused legacy `games.json` file.

### [2.2.7] — Dark Mode & Desk Settings
**Patch**
- Added a warm dark-wood study theme with soft lamplight, restrained stars, and muted colored notes.
- Added Light, Dark, and System appearance choices; signed-in appearance preferences synchronize through existing board settings.
- Applied dark styling to the corkboard, Scorebook, account panel, game organizer, search, score forms, and navigation.
- Grouped appearance, compact notes, desk sounds, and reduced motion in a single Desk Settings panel.
- Added matching dark logo and icon assets, including a dark manifest for compatible browsers; iOS Home Screen icons may still require reinstalling because iOS caches installed icons.
- Preserved puzzle order, scores, saved progress, and existing Supabase tables. No SQL migration required.

### [2.2.6] — Search & Skip for Today
**Patch**
- **Maintenance fix (no version bump):** Added PNG/ICO favicon fallbacks for browser bookmarks and kept the dotted Up Next outline visible at narrow screen widths.
- Added a search box above the corkboard to quickly find games without changing their order.
- Added a small **Skip for Today** action on unfinished game notes.
- Skipped notes become compact and distinct from completed notes; they don't increase completion totals or score averages.
- Made skipped status reset daily and sync across signed-in devices (with the separate Supabase migration).
- Added desktop search shortcuts: `/` to focus the search field and `Escape` to clear it.

### [2.2.5] — Desk Sounds & Quick Undo
**Patch**
- Added optional, subtle stamp feedback when marking a game Done.
- Added optional pencil-writing feedback when saving a score.
- Added a sound setting; effects are synthesized locally rather than requiring downloaded audio.
- Added a temporary **Undo** shortcut after Done or Skip.

### [2.2.4] — Interface & Version History
**Patch**
- Added a small version label beneath the Morning Circuit name in the sticky header.
- Improved keyboard focus styling and accessibility of on-site controls.
- Refined keyboard handling so shortcuts don't interfere with typing into Morning Circuit inputs.

### [2.2.3] — Performance & Stability
**Patch**
- Reduced costly desktop hover effects and deferred off-screen section painting where supported.
- Avoided rebuilding the whole corkboard when cloud checks found no changes.
- Reduced redundant work when ordering and rendering games.
- Kept the existing progress, cloud sync, scores, and game order intact.

### [2.2.2] — Branding & Sync Polish
**Patch · Formerly labeled v5.4.1**
- Unified the header logo, website favicon, and phone Home Screen icons around the sun-and-check design.
- Corrected a style conflict that displayed the sync indicator as a tiny red oval.
- Added readable cloud-sync states: Synced, Syncing, Saving, Offline, and Sync issue.
- Made the sync status an entry point to account and manual-sync controls.

### [2.2.1] — Daily Experience Improvements
**Patch · Shipped with v2.1.0 and v2.2.0**
- Added **Compact View** for unfinished notes.
- Added a **Continue** shortcut to jump to the next unfinished game.
- Added a small celebration when all visible games are complete.
- Added a cloud-sync status indicator.

### [2.2.0] — Customize Your Circuit
**Minor · Shipped with v2.1.0 and v2.2.1**
- Added an **Arrange Games** area for reordering games and moving them between stages.
- Added the option to hide games without deleting their saved score history.
- Added a way to restore the original difficulty-based order.
- Kept New York Times and LinkedIn game collections grouped.
- Added cloud-saved layout preferences (with a separate Supabase migration).

### [2.1.0] — Smarter Statistics
**Minor · Shipped with v2.2.0 and v2.2.1**
- Expanded the Scorebook with recent-versus-lifetime comparisons.
- Added averages over the latest 7, 30, and 90 comparable scored plays.
- Added recent personal bests and simple performance trends.
- Added solve percentages for supported games.
- Preserved distinctions between score formats such as guesses, points, and time.

### [2.0.2] — Guided Scoring
**Patch · Formerly labeled v5.1**
- Added optional guided score entry for 10 games: Wordle, Worldle, Nerdle, Connections, Minute Cryptic, Queens, More or Less, TimeGuessr, Travle, and Waffle.
- Introduced reusable inputs for guesses, mistakes, points, completion time, extra guesses, and stars.
- Retained custom free-text scores and previous results for all games.
- Extended Scorebook recognition of supported score formats without changing the database schema.

### [2.0.1] — Corkboard Polish
**Patch · Formerly labeled v5.0.1**
- Made the compact header remain visible when scrolling; clicking the logo returns to the top.
- Refined the greeting and introductory copy.
- Replaced the vague daily-reset label with a live countdown to midnight.
- Made finished game notes collapse into slim green notes while keeping score/edit controls accessible.
- Reduced redundant Scorebook navigation and strengthened Reduce Motion options.
- Refined the shared logo design and mobile header spacing.

### [2.0.0] — Statistics Notebook
**Major · Formerly labeled v5.0**
- Introduced the separate **Scorebook / Statistics Notebook** while keeping the corkboard dedicated to playing.
- Added per-game score history, average scores where comparable, and personal bests.
- Added a 28-day activity calendar, daily streaks, and individual game scorecards.
- Reused existing dated Supabase results, with no new database setup needed.

---

## v1 — Launch, design & sync foundations

### [1.3.0] — Accounts & Cloud Sync
**Minor · Formerly labeled v4.0**
- Added email/password accounts with Supabase authentication.
- Added private cloud storage for per-user progress, scores, and history.
- Added cross-device synchronization between desktop and mobile.
- Added guest use and an explicit option to import existing device-local results into an account.
- Established user-specific data access rules to support additional accounts in the future.

### [1.2.1] — Performance & Link Polish
**Patch · Shipped with v1.2.0**
- Added a **Reduce Motion** option to minimize hover movement, animations, and visual effects.
- Removed link-verification warnings after game links were reviewed.
- Preserved the daily checklist and existing saved preferences.

### [1.2.0] — Optional Scores
**Minor · Formerly labeled v3.0**
- Added optional, editable score fields to completed game notes.
- Supported flexible free-text results such as `3/6`, `850 points`, or `2:15`.
- Saved results by game and date without requiring a score to finish a game.
- Established a foundation for the later Scorebook.

### [1.1.2] — Compact Mobile Layout
**Patch**
- Reduced sticky-note height, icon size, padding, and spacing on small screens.
- Kept Play and Done controls comfortably tappable.
- Preserved the desktop layout and all existing features.

### [1.1.1] — GitHub & Mobile Support
**Patch**
- Prepared a downloadable static-site package for GitHub Pages hosting.
- Added support for placing Morning Circuit on a phone's Home Screen.
- Included site icons and deployment guidance.
- Kept the website lightweight and usable without a traditional app installation.

### [1.1.0] — Corkboard Edition
**Minor**
- Redesigned the launcher into a warm corkboard with colorful sticky notes, pins, and puzzle-themed details.
- Added individual game cards with Play, Done, and link-edit controls.
- Updated supplied game URLs and combined Magnitudle / Size It Up into one game, leaving **54** daily games.
- Preserved daily progress, the Next Up experience, and the original difficulty progression.

### [1.0.0] — Morning Circuit Launch
**Major · Initial release**
- Launched a mobile-friendly, single-page launcher for **55 daily puzzles**, including New York Times and LinkedIn game blocks.
- Added links to each puzzle, Done checkboxes, and an **Up Next** shortcut.
- Added a progress bar, locally saved completion state, and an automatic local-midnight reset.
- Organized games from morning warm-up to peak difficulty and cooldown.

---

## Release conventions

- **Major (`X.0.0`):** A meaningful new chapter in how Morning Circuit is used.
- **Minor (`X.Y.0`):** A new feature or system that noticeably expands everyday capabilities.
- **Patch (`X.Y.Z`):** Bug fixes, performance work, accessibility, small additions, and refinements.
- Lock a release number **before development begins**, and include it in the GitHub commit title and description.
- Keep database migration files separate from the deployable website package. Only run a migration when its release requires it.
