-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-10-24T09:45:40Z)
-- engine: postgres
-- table:  categories
-- Contract view for [categories]
CREATE OR REPLACE VIEW vw_categories AS
SELECT
  id,
  name,
  slug,
  parent_id,
  created_at,
  updated_at,
  deleted_at
FROM categories;
