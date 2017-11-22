class AddFieldToInvoiceItems < ActiveRecord::Migration[5.1]
  def change
    add_column :invoice_items, :number, :string
  end
end
