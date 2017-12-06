class IssueNoteItem < ApplicationRecord
  belongs_to :issue_note
  belongs_to :item
end
