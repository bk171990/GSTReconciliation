class CreateExportInvoiceItems < ActiveRecord::Migration[5.1]
  def change
    create_table :export_invoice_items do |t|
      t.references :item, foreign_key: true
      t.references :export_invoice, foreign_key: true

      t.timestamps
    end
  end
end
