-- Auto-generated from schema-map.psd1 (map@6cefe8e)
-- table: invoice_items
ALTER TABLE invoice_items ADD CONSTRAINT fk_invoice_items_invoice FOREIGN KEY (invoice_id) REFERENCES invoices(id) ON DELETE CASCADE;
