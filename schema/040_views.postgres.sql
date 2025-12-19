-- Auto-generated from schema-views-postgres.yaml (map@sha1:5C6FE96DC2067A978A357A1DCB8631B46C71D429)
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
