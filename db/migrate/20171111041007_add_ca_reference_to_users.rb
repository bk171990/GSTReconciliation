class AddCaReferenceToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :charted_accountant, foreign_key: true
    add_reference :users, :party, foreign_key: true
  end
end
