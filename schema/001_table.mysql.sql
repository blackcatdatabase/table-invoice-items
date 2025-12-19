-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  invoice_items

CREATE TABLE IF NOT EXISTS invoice_items (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  tenant_id BIGINT UNSIGNED NOT NULL,
  invoice_id BIGINT UNSIGNED NOT NULL,
  line_no INT NOT NULL,
  description TEXT NOT NULL,
  unit_price DECIMAL(12,2) NOT NULL,
  quantity INT UNSIGNED NOT NULL,
  tax_rate DECIMAL(5,2) NOT NULL,
  tax_amount DECIMAL(12,2) NOT NULL,
  line_total DECIMAL(12,2) NOT NULL,
  currency CHAR(3) NOT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  UNIQUE KEY uq_invoice_line (invoice_id, line_no),
  INDEX idx_invoice_items_tenant_invoice (tenant_id, invoice_id),
  CONSTRAINT chk_invoice_items_currency CHECK (currency REGEXP '^[A-Z]{3}$'),
  CONSTRAINT chk_invoice_items_qty CHECK (quantity > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
