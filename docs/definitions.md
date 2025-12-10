# invoice_items

Normalized invoice line items.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| description | TEXT | NO |  | Line description. |
| unit_price | mysql: DECIMAL(12,2) / postgres: NUMERIC(12,2) | NO |  | Unit price excl. tax. |
| id | BIGINT | NO |  | Surrogate primary key. |
| tax_amount | mysql: DECIMAL(12,2) / postgres: NUMERIC(12,2) | NO |  | Tax amount. |
| line_total | mysql: DECIMAL(12,2) / postgres: NUMERIC(12,2) | NO |  | Total incl. tax for line. |
| tax_rate | mysql: DECIMAL(5,2) / postgres: NUMERIC(5,2) | NO |  | Tax rate % (0..100). |
| invoice_id | BIGINT | NO |  | Invoice (FK invoices.id). |
| line_no | mysql: INT / postgres: INTEGER | NO |  | Line number within invoice. |
| currency | CHAR(3) | NO |  | ISO 4217 currency code. |
| quantity | mysql: INT / postgres: INTEGER | NO |  | Quantity (> 0). |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_invoice_line | invoice_id, line_no |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_invoice_items_tenant_invoice | tenant_id,invoice_id | INDEX idx_invoice_items_tenant_invoice (tenant_id, invoice_id) |
| uq_invoice_line | invoice_id,line_no | UNIQUE KEY uq_invoice_line (invoice_id, line_no) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_invoice_items_invoice | tenant_id,invoice_id | invoices(tenant_id,id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_invoice_line | invoice_id, line_no |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_invoice_items_tenant_invoice | tenant_id,invoice_id | CREATE INDEX IF NOT EXISTS idx_invoice_items_tenant_invoice ON invoice_items (tenant_id, invoice_id) |
| uq_invoice_line | invoice_id,line_no | CONSTRAINT uq_invoice_line UNIQUE (invoice_id, line_no) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_invoice_items_invoice | tenant_id,invoice_id | invoices(tenant_id,id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_invoice_items | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_invoice_items | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
