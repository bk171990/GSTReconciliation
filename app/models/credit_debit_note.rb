class CreditDebitNote < ApplicationRecord
  belongs_to :customer
  has_many :credit_debit_note_items, inverse_of: :credit_debit_note
  accepts_nested_attributes_for :credit_debit_note_items, reject_if: :all_blank, allow_destroy: true
  scope :shod, ->(id) { where(id: id).take }

   def self.set_credit_debit_note_no
    date = Date.today.strftime('%d')
    if CreditDebitNote.first.nil?
      'CDN' + date.to_s + '1'
    else
      last_id = CreditDebitNote.last.id.next
      'CDN' + date.to_s + last_id.to_s
    end
  end

end
