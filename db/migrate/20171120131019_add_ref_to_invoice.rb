class AddRefToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :customer_id, :integer
    add_column :invoices, :item_id, :integer
  end
end
