class Customer < ApplicationRecord
	belongs_to :party
	scope :shod, ->(id) { where(id: id).take }
	has_many :invoices
	has_many :export_invoices
	has_many :exempt_invoices
	has_many :credit_debit_note
	# has_many :customer_items
	# has_many :items, through: :customer_items
    # accepts_nested_attributes_for :items, :allow_destroy => true


end
