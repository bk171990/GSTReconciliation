class ExportPurchaseBillItem < ApplicationRecord
  belongs_to :item
  belongs_to :export_purchase_bill
end
