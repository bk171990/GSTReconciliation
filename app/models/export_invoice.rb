class ExportInvoice < ApplicationRecord
  belongs_to :customer 
  has_many :export_invoice_items, inverse_of: :export_invoice
  accepts_nested_attributes_for :export_invoice_items, reject_if: :all_blank, allow_destroy: true
  scope :shod, ->(id) { where(id: id).take }
  
    def self.set_invoice_no
    date = Date.today.strftime('%d')
    if ExportInvoice.first.nil?
      'EXP' + date.to_s + '1'
    else
      last_id = ExportInvoice.last.id.next
      'EXP' + date.to_s + last_id.to_s
    end
  end
end
