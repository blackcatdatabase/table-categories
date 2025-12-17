-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  categories

CREATE UNIQUE INDEX IF NOT EXISTS ux_categories_tenant_slug_live_ci ON categories (tenant_id, slug_ci, is_live);

CREATE UNIQUE INDEX IF NOT EXISTS ux_categories_tenant_id ON categories (tenant_id, id);

CREATE INDEX IF NOT EXISTS idx_categories_tenant_parent ON categories (tenant_id, parent_id);

CREATE INDEX IF NOT EXISTS idx_categories_name_ci ON categories (tenant_id, name_ci);

CREATE INDEX IF NOT EXISTS idx_categories_tenant_parent ON categories (tenant_id, parent_id);

CREATE INDEX IF NOT EXISTS idx_categories_parent ON categories (parent_id);

CREATE INDEX IF NOT EXISTS idx_categories_name_ci ON categories (tenant_id, lower(name));
