-- Morning Circuit v5.2–v5.4 · run once in Supabase SQL Editor BEFORE publishing new HTML.
-- Adds a preference column for the per-user game order, hidden games and compact mode.
-- Existing accounts, scores and Row Level Security policies stay unchanged.
ALTER TABLE public.morning_circuit_settings
  ADD COLUMN IF NOT EXISTS board_preferences jsonb NOT NULL DEFAULT '{}'::jsonb;
-- This is a private settings row; the existing per-user RLS policies apply.
-- Optional verification:
-- SELECT column_name FROM information_schema.columns
-- WHERE table_schema = 'public' AND table_name = 'morning_circuit_settings' AND column_name = 'board_preferences';
