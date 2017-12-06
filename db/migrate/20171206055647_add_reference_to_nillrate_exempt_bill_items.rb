class AddReferenceToNillrateExemptBillItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :nillrate_exempt_bill_items, :nillrate_exempt_bill, foreign_key: true
  end
end
