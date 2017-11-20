class CreateCustomerItems < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_items do |t|
      t.integer :customer_id
      t.integer :item_id

      t.timestamps
    end
  end
end
