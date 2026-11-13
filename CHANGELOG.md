# Morning Circuit — release notes

## v2.2.6 — Search & Skip for Today
- Added a search field above the corkboard; press `/` to focus it on desktop and Escape to clear.
- Added a subtle Skip action alongside unfinished games.
- Skipped games stay in the same order as slim tan notes, can be unskipped, and don't count as completed.
- Skips reset at local midnight and sync between devices after running `supabase-v2.2.6.sql`.

## v2.2.5 — Desk Sounds & Quick Undo
- Added subtle locally generated stamp and pencil sounds on Done and score Save, with an on/off setting.
- Added a short-lived Undo action after marking a game Done or skipping a game.

## v2.2.4 — Interface & Version History
- Added an unobtrusive version number beneath the brand in the sticky header.
- Refined keyboard focus and search-keyboard behavior without affecting the games' own websites.

## v2.2.3 — Performance & Stability
- Reduced desktop hover effects and deferred off-screen section painting where supported.
- Avoided unnecessary full board renders on unchanged Supabase settings and results.
- Cached ordering during renders to reduce redundant work.

**Previous stable release:** v2.2.2 — Branding & Sync Polish (previously distributed as v5.4.1 before the numbering change).
