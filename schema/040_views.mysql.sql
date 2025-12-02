-- Auto-generated from schema-views-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  categories

-- Contract view for [categories]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_categories AS
SELECT
  tenant_id,
  id,
  name,
  slug,
  parent_id,
  created_at,
  updated_at,
  version,
  deleted_at
FROM categories;
