class InvoiceItem < ApplicationRecord
	belongs_to :invoice
	has_many :invoice_items
	accepts_nested_attributes_for :invoice_items, :allow_destroy => true
end
