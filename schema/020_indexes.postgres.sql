-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  invoice_items

CREATE INDEX IF NOT EXISTS idx_invoice_items_tenant_invoice ON invoice_items (tenant_id, invoice_id);
