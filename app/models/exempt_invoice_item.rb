class ExemptInvoiceItem < ApplicationRecord
  belongs_to :item
  belongs_to :exempt_invoice
end
