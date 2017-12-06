class CreditDebitNoteItem < ApplicationRecord
  belongs_to :item
  belongs_to :credit_debit_note
end
