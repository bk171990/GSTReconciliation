class CreateExemptInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :exempt_invoices do |t|
      t.references :customer, foreign_key: true
      t.string :exempt_invoice_number
      t.date :exempt_invoice_date

      t.timestamps
    end
  end
end
