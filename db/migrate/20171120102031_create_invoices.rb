class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :invoice_no
      t.date :date

      t.timestamps
    end
  end
end
