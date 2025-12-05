-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  invoice_items

CREATE INDEX IF NOT EXISTS idx_invoice_items_tenant_invoice ON invoice_items (tenant_id, invoice_id);
