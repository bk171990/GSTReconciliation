class AddInvoiceRefToCustomerItems < ActiveRecord::Migration[5.1]
  def change
    add_column :customer_items, :invoice_id, :integer
  end
end
