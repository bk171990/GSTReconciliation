class AddEmailAddressToParties < ActiveRecord::Migration[5.1]
  def change
    add_column :parties, :email, :string
  end
end
