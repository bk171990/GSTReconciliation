class Customer < ApplicationRecord
	belongs_to :party
	scope :shod, ->(id) { where(id: id).take }
	has_many :customer_items
	has_many :items, through: :customer_items
    accepts_nested_attributes_for :items, :allow_destroy => true

  def self.set_invoice_no
    date = Date.today.strftime('%Y%m%d')
    if Customer.first.nil?
      'S' + date.to_s + '1'
    else
      last_id = Customer.last.id.next
      'S' + date.to_s + last_id.to_s
    end
  end
end
