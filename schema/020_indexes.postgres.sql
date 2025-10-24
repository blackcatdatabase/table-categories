-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  categories
CREATE INDEX idx_categories_parent ON categories (parent_id);
