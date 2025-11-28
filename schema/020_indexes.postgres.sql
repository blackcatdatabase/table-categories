-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  categories

CREATE UNIQUE INDEX IF NOT EXISTS ux_categories_tenant_slug_live_ci ON categories (tenant_id, slug_ci) WHERE deleted_at IS NULL;

CREATE UNIQUE INDEX IF NOT EXISTS ux_categories_tenant_id ON categories (tenant_id, id);

CREATE INDEX IF NOT EXISTS idx_categories_tenant_parent ON categories (tenant_id, parent_id);

CREATE INDEX IF NOT EXISTS idx_categories_parent ON categories (parent_id);

CREATE INDEX IF NOT EXISTS idx_categories_name_ci ON categories (lower(name));
