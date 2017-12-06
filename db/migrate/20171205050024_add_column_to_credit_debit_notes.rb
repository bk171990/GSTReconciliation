class AddColumnToCreditDebitNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :credit_debit_notes, :register_type, :string
    add_column :credit_debit_notes, :note_type, :string
  end
end
