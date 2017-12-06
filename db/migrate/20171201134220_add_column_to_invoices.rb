class AddColumnToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :shipping_address, :string
  end
end
