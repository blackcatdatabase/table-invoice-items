<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – invoice_items

Normalized invoice line items.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| tenant_id | BIGINT | NO | — |  |  |
| invoice_id | BIGINT | NO | — | Invoice (FK invoices.id). |  |
| line_no | INTEGER | NO | — | Line number within invoice. |  |
| description | TEXT | NO | — | Line description. |  |
| unit_price | NUMERIC(12,2) | NO | — | Unit price excl. tax. |  |
| quantity | INTEGER | NO | — | Quantity (> 0). |  |
| tax_rate | NUMERIC(5,2) | NO | — | Tax rate % (0..100). |  |
| tax_amount | NUMERIC(12,2) | NO | — | Tax amount. |  |
| line_total | NUMERIC(12,2) | NO | — | Total incl. tax for line. |  |
| currency | CHAR(3) | NO | — | ISO 4217 currency code. |  |