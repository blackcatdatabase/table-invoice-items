-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  invoice_items

ALTER TABLE invoice_items ADD CONSTRAINT fk_invoice_items_invoice FOREIGN KEY (tenant_id, invoice_id) REFERENCES invoices(tenant_id, id) ON DELETE CASCADE;

ALTER TABLE invoice_items ADD CONSTRAINT chk_invoice_items_tax_rate CHECK (tax_rate BETWEEN 0 AND 100);
