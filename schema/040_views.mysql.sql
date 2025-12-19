-- Auto-generated from schema-views-mysql.yaml (map@sha1:39CF23914A48753BF55EEB1F38DDBA21AB1DBBB7)
-- engine: mysql
-- table:  invoice_items

-- Contract view for [invoice_items]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_invoice_items AS
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
  currency,
  created_at,
  updated_at
FROM invoice_items;
