class AddFieldToParty < ActiveRecord::Migration[5.1]
  def change
    add_column :parties, :party_no, :string
  end
end
