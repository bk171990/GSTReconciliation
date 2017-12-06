class AddColumnToNillrateExemptBillItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :nillrate_exempt_bill_items, :item, foreign_key: true
  end
end
