class AddColumnToInvoiceItems < ActiveRecord::Migration[5.1]
  def change
    add_column :invoice_items, :quantity, :string
    add_column :invoice_items, :net_amt, :string
    add_column :invoice_items, :tax_rate, :decimal, :precision => 10, :scale => 2
    add_column :invoice_items, :tax_amt, :decimal, :precision => 10, :scale => 2
    add_column :invoice_items, :total_amt, :string
    add_column :invoice_items, :item_descritption, :string
    add_column :invoice_items, :unit_price, :string
  end
end
