# 📦 Invoice Items

![SQL](https://img.shields.io/badge/SQL-MySQL%208.0%2B-4479A1?logo=mysql&logoColor=white) ![License](https://img.shields.io/badge/license-BlackCat%20Proprietary-red) ![Status](https://img.shields.io/badge/status-stable-informational) ![Generated](https://img.shields.io/badge/generated-from%20schema--map-blue)

<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->

> Schema package for table **invoice_items** (repo: `invoice-items`).

## Files
```
schema/
  001_table.sql
  # (no deferred indexes declared in map)
  030_foreign_keys.sql
```

## Quick apply
```bash
# Apply schema (Linux/macOS):
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/001_table.sql
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/030_foreign_keys.sql
```

```powershell
# Apply schema (Windows PowerShell):
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/001_table.sql
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/030_foreign_keys.sql
```

## Docker quickstart
```bash
# Spin up a throwaway MySQL and apply just this package:
docker run --rm -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=app -p 3307:3306 -d mysql:8
sleep 15
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/001_table.sql
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/030_foreign_keys.sql
```

## Columns
| Column | Type | Null | Default | Extra |
|-------:|:-----|:----:|:--------|:------|
| id | BIGINT UNSIGNED | — | — | AUTO_INCREMENT, PK |
| invoice_id | BIGINT UNSIGNED | NO | — |  |
| line_no | INT | NO | — |  |
| description | TEXT | NO | — |  |
| unit_price | DECIMAL(12,2) | NO | — |  |
| quantity | INT UNSIGNED | NO | — |  |
| tax_rate | DECIMAL(5,2) | NO | — |  |
| tax_amount | DECIMAL(12,2) | NO | — |  |
| line_total | DECIMAL(12,2) | NO | — |  |
| currency | CHAR(3) | NO | — |  |

## Relationships
- FK → **invoices** via (invoice_id) (ON DELETE CASCADE).

```mermaid
erDiagram
  INVOICE_ITEMS {
    INT id PK
    INT invoice_id
    INT line_no
    VARCHAR description
    DECIMAL unit_price
    INT quantity
    DECIMAL tax_rate
    DECIMAL tax_amount
    DECIMAL line_total
    VARCHAR currency
  }
  INVOICE_ITEMS }o--|| INVOICES : "invoice_id"
```

## Indexes
- No deferred indexes declared for this table.

## Notes
- Generated from the umbrella repository **blackcat-database** using `scripts/schema-map.psd1`.
- To change the schema, update the map and re-run the generators.

## License
Distributed under the **BlackCat Store Proprietary License v1.0**. See `LICENSE`.

