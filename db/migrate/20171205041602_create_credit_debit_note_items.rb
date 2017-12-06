class CreateCreditDebitNoteItems < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_debit_note_items do |t|
      t.references :item, foreign_key: true
      t.references :credit_debit_note, foreign_key: true
      t.string :unit_price
      t.string :quantity
      t.string :rate
      t.string :net_amt
      t.string :sgst
      t.string :cgst
      t.string :tax_rate
      t.string :tax_amt
      t.string :total_amt
      t.string :qty

      t.timestamps
    end
  end
end
