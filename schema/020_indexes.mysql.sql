-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  categories

CREATE UNIQUE INDEX ux_categories_tenant_slug_live_ci ON categories (tenant_id, slug_ci, is_live);

CREATE UNIQUE INDEX ux_categories_tenant_id ON categories (tenant_id, id);

CREATE INDEX idx_categories_tenant_parent ON categories (tenant_id, parent_id);

CREATE INDEX idx_categories_name_ci ON categories (tenant_id, (LOWER(name)));
