<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – categories

Hierarchical product categories.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| tenant_id | BIGINT | NO | — |  |  |
| name | VARCHAR(255) | NO | — | Category name. |  |
| slug | VARCHAR(255) | NO | — | Unique slug. |  |
| slug_ci | TEXT | — | — |  |  |
| parent_id | BIGINT | YES | — | Parent category (self-FK), nullable. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |  |
| version | INTEGER | NO | 0 |  |  |
| deleted_at | TIMESTAMPTZ(6) | YES | — | Soft delete timestamp. |  |
| is_live | BOOLEAN | YES | — |  |  |