-- Auto-generated from schema-map-postgres.psd1 (map@38d5403)
-- engine: postgres
-- table:  categories
CREATE INDEX IF NOT EXISTS idx_categories_parent ON categories (parent_id);
