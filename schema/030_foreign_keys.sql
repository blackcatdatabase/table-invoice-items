-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: invoice_items
ALTER TABLE invoice_items ADD CONSTRAINT fk_invoice_items_invoice FOREIGN KEY (invoice_id) REFERENCES invoices(id) ON DELETE CASCADE;
