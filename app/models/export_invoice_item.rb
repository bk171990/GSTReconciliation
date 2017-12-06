class ExportInvoiceItem < ApplicationRecord
  belongs_to :item
  belongs_to :export_invoice
end
