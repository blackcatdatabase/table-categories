-- Auto-generated from schema-views-postgres.yaml (map@sha1:EDC13878AE5F346E7EAD2CF0A484FEB7E68F6CDD)
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
