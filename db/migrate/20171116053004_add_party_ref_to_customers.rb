class AddPartyRefToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :party_id, :integer
  end
end
