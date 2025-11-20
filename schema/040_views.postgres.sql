-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  invoice_items
-- Contract view for [invoice_items]
CREATE OR REPLACE VIEW vw_invoice_items AS
SELECT
  id,
  tenant_id,
  invoice_id,
  line_no,
  description,
  unit_price,
  quantity,
  tax_rate,
  tax_amount,
  line_total,
  currency
FROM invoice_items;
