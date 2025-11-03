-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  categories
CREATE INDEX IF NOT EXISTS idx_categories_parent ON categories (parent_id);
