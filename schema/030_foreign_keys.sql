-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: categories
ALTER TABLE categories ADD CONSTRAINT fk_categories_parent FOREIGN KEY (parent_id) REFERENCES categories(id) ON DELETE SET NULL;
