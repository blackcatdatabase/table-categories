# categories

Hierarchical product categories.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| deleted_at | DATETIME(6) | YES |  | Soft delete timestamp. |
| id | BIGINT | NO |  | Surrogate primary key. |
| name | VARCHAR(255) | NO |  | Category name. |
| parent_id | BIGINT | YES |  | Parent category (self-FK), nullable. |
| slug | VARCHAR(255) | NO |  | Unique slug. |
| updated_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_categories_tenant_id | tenant_id, id |
| ux_categories_tenant_slug_live_ci | tenant_id, slug_ci, is_live |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_categories_name_ci | tenant_id,name_ci | CREATE INDEX idx_categories_name_ci ON categories (tenant_id, name_ci) |
| idx_categories_parent | parent_id | INDEX idx_categories_parent (parent_id) |
| idx_categories_tenant_parent | tenant_id,parent_id | CREATE INDEX idx_categories_tenant_parent ON categories (tenant_id, parent_id) |
| ux_categories_tenant_id | tenant_id,id | CREATE UNIQUE INDEX ux_categories_tenant_id ON categories (tenant_id, id) |
| ux_categories_tenant_slug_live_ci | tenant_id,slug_ci,is_live | CREATE UNIQUE INDEX ux_categories_tenant_slug_live_ci ON categories (tenant_id, slug_ci, is_live) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_categories_parent | parent_id | categories(id) | ON DELETE SET |
| fk_categories_tenant | tenant_id | tenants(id) | ON DELETE RESTRICT |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_categories_tenant_id | tenant_id, id |
| ux_categories_tenant_slug_live_ci | tenant_id, slug_ci, is_live |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_categories_name_ci | tenant_id,name_ci | CREATE INDEX IF NOT EXISTS idx_categories_name_ci ON categories (tenant_id, name_ci) |
| idx_categories_name_ci | tenant_id,lower(name | CREATE INDEX IF NOT EXISTS idx_categories_name_ci ON categories (tenant_id, lower(name)) |
| idx_categories_parent | parent_id | CREATE INDEX IF NOT EXISTS idx_categories_parent ON categories (parent_id) |
| idx_categories_tenant_parent | tenant_id,parent_id | CREATE INDEX IF NOT EXISTS idx_categories_tenant_parent ON categories (tenant_id, parent_id) |
| idx_categories_tenant_parent | tenant_id,parent_id | CREATE INDEX IF NOT EXISTS idx_categories_tenant_parent ON categories (tenant_id, parent_id) |
| ux_categories_tenant_id | tenant_id,id | CREATE UNIQUE INDEX IF NOT EXISTS ux_categories_tenant_id ON categories (tenant_id, id) |
| ux_categories_tenant_slug_live_ci | tenant_id,slug_ci,is_live | CREATE UNIQUE INDEX IF NOT EXISTS ux_categories_tenant_slug_live_ci ON categories (tenant_id, slug_ci, is_live) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_categories_parent | parent_id | categories(id) | ON DELETE SET |
| fk_categories_tenant | tenant_id | tenants(id) | ON DELETE RESTRICT |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_categories | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_categories | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
