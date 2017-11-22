class AddRefToInvoiceItems < ActiveRecord::Migration[5.1]
  def change
    add_column :invoice_items, :item_id, :integer
  end
end
