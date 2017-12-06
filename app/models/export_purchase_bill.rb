class ExportPurchaseBill < ApplicationRecord
  belongs_to :customer
  has_many :export_purchase_bill_items, inverse_of: :export_purchase_bill
  accepts_nested_attributes_for :export_purchase_bill_items, reject_if: :all_blank, allow_destroy: true
  scope :shod, ->(id) { where(id: id).take }


  def self.set_purchase_no
    date = Date.today.strftime('%d')
    if ExportPurchaseBill.first.nil?
      'P' + date.to_s + '1'
    else
      last_id = ExportPurchaseBill.last.id.next
      'P' + date.to_s + last_id.to_s
    end
  end

end
