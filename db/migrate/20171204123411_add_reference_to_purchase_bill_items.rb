class AddReferenceToPurchaseBillItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :purchase_bill_items, :item, foreign_key: true
    add_reference :purchase_bill_items, :purchase_bill, foreign_key: true
  end
end
