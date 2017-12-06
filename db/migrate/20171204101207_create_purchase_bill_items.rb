class CreatePurchaseBillItems < ActiveRecord::Migration[5.1]
  def change
    create_table :purchase_bill_items do |t|
        t.integer :quantity
      	t.float :net_amount
      	t.float :tax_rate
      	t.float :tax_amt
      	t.float :total_amt
      	t.string :item_description
      	t.integer :unit_price

      	t.timestamps
    end
  end
end
