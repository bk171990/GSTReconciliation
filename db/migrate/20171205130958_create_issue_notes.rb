class CreateIssueNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_notes do |t|
      t.references :customer, foreign_key: true
      t.date :date_of_original_invoice
      t.string :invoice_no
      t.string :gstin_no
      t.string :e_way_bill_no
      t.date :date_of_issue_note
      t.string :issue_note_no
      t.string :pre_gst
      t.string :place_of_supply
      t.string :reason_for_issuing_note
      t.string :register_type
      t.string :note_type

      t.timestamps
    end
  end
end
