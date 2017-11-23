class Invoice < ApplicationRecord
	has_many :items
	belongs_to :customer
  has_many :invoice_items 
  accepts_nested_attributes_for :invoice_items, :allow_destroy => true

  def self.set_invoice_no
    date = Date.today.strftime('%d')
    if Invoice.first.nil?
      'S' + date.to_s + '1'
    else
      last_id = Invoice.last.id.next
      'S' + date.to_s + last_id.to_s
    end
  end
end
