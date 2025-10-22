<!-- Auto-generated from schema-map.psd1 @ 6cefe8e (2025-10-22T20:27:41+02:00) -->
# Definition – invoice_items

Normalized invoice line items.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| invoice_id | BIGINT UNSIGNED | NO | — | Invoice (FK invoices.id). |  |
| line_no | INT | NO | — | Line number within invoice. |  |
| description | TEXT | NO | — | Line description. |  |
| unit_price | DECIMAL(12,2) | NO | — | Unit price excl. tax. |  |
| quantity | INT UNSIGNED | NO | — | Quantity (> 0). |  |
| tax_rate | DECIMAL(5,2) | NO | — | Tax rate %. |  |
| tax_amount | DECIMAL(12,2) | NO | — | Tax amount. |  |
| line_total | DECIMAL(12,2) | NO | — | Total incl. tax for line. |  |
| currency | CHAR(3) | NO | — | ISO 4217 currency code. |  |