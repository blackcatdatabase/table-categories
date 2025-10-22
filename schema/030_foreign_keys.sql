-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: categories
ALTER TABLE categories ADD CONSTRAINT fk_categories_parent FOREIGN KEY (parent_id) REFERENCES categories(id) ON DELETE SET NULL;
