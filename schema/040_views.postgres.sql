-- Auto-generated from schema-views-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  categories

-- Contract view for [categories]
CREATE OR REPLACE VIEW vw_categories AS
SELECT
  id,
  tenant_id,
  name,
  slug,
  parent_id,
  created_at,
  updated_at,
  version,
  deleted_at
FROM categories;
