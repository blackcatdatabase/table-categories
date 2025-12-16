-- Auto-generated from schema-views-mysql.yaml (map@sha1:FFA9A9D6FA9EE079B0DAEBB6FEE023C138E8FFA1)
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
