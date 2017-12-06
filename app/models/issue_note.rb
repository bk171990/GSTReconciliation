class IssueNote < ApplicationRecord
  belongs_to :customer
  has_many :issue_note_items, inverse_of: :issue_note
  accepts_nested_attributes_for :issue_note_items, reject_if: :all_blank, allow_destroy: true
  scope :shod, ->(id) { where(id: id).take }


  def self.set_issue_note_no
    date = Date.today.strftime('%d')
    if IssueNote.first.nil?
      'IN' + date.to_s + '1'
    else
      last_id = IssueNote.last.id.next
      'IN' + date.to_s + last_id.to_s
    end
  end
end
