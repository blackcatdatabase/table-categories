-- Auto-generated from schema-map-postgres.psd1 (map@c5e4097)
-- engine: postgres
-- table:  categories
CREATE INDEX IF NOT EXISTS idx_categories_parent ON categories (parent_id);
