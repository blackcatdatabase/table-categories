<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – categories

Hierarchical product categories.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| name | VARCHAR(255) | NO | — | Category name. |  |
| slug | VARCHAR(255) | NO | — | Unique slug. |  |
| parent_id | BIGINT UNSIGNED | YES | — | Parent category (self-FK), nullable. |  |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |  |
| deleted_at | DATETIME(6) | YES | — | Soft delete timestamp. |  |
