class AddCaReferenceToParties < ActiveRecord::Migration[5.1]
  def change
    add_reference :parties, :charted_accountant, foreign_key: true
  end
end
