-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  categories
-- Contract view for [categories]
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_categories AS
SELECT
  id,
  name,
  slug,
  parent_id,
  created_at,
  updated_at,
  deleted_at
FROM categories;
