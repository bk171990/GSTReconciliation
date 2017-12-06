class NillrateExemptBill < ApplicationRecord
  belongs_to :customer
  has_many :nillrate_exempt_bill_items, inverse_of: :nillrate_exempt_bill
  accepts_nested_attributes_for :nillrate_exempt_bill_items, reject_if: :all_blank, allow_destroy: true
  scope :shod, ->(id) { where(id: id).take }

  def self.set_purchase_no
    date = Date.today.strftime('%d')
    if NillrateExemptBill.first.nil?
      'P' + date.to_s + '1'
    else
      last_id = NillrateExemptBill.last.id.next
      'P' + date.to_s + last_id.to_s
    end
  end
end
