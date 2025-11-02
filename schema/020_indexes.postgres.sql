-- Auto-generated from schema-map-postgres.psd1 (map@db2f8b8)
-- engine: postgres
-- table:  categories
CREATE INDEX IF NOT EXISTS idx_categories_parent ON categories (parent_id);
