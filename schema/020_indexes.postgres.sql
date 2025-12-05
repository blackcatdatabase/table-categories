-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  categories

CREATE UNIQUE INDEX IF NOT EXISTS ux_categories_tenant_slug_live_ci ON categories (tenant_id, slug_ci, is_live);

CREATE UNIQUE INDEX IF NOT EXISTS ux_categories_tenant_id ON categories (tenant_id, id);

CREATE INDEX IF NOT EXISTS idx_categories_tenant_parent ON categories (tenant_id, parent_id);

CREATE INDEX IF NOT EXISTS idx_categories_parent ON categories (parent_id);

CREATE INDEX IF NOT EXISTS idx_categories_name_ci ON categories (tenant_id, lower(name));
