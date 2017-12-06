class AddColumnToExportInvoiceItems < ActiveRecord::Migration[5.1]
  def change
    add_column :export_invoice_items, :unit_price, :string
    add_column :export_invoice_items, :quantity, :string
    add_column :export_invoice_items, :rate, :string
    add_column :export_invoice_items, :qty, :string
    add_column :export_invoice_items, :net_amt, :string
    add_column :export_invoice_items, :sgst, :string
    add_column :export_invoice_items, :cgst, :string
    add_column :export_invoice_items, :tax_rate, :string
    add_column :export_invoice_items, :tax_amt, :string
    add_column :export_invoice_items, :total_amt, :string
  end
end
