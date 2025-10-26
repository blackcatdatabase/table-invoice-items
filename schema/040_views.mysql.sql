-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  invoice_items
-- Contract view for [invoice_items]
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_invoice_items AS
SELECT
  id,
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
