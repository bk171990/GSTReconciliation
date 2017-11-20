class AddCustomerRefToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :customer_id, :integer
  end
end
