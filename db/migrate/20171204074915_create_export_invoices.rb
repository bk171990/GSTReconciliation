class CreateExportInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :export_invoices do |t|
      t.references :customer, foreign_key: true
      t.string :export_invoice_number
      t.date :export_invoice_date

      t.timestamps
    end
  end
end
