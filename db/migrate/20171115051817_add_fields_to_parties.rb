class AddFieldsToParties < ActiveRecord::Migration[5.1]
  def change
    add_column :parties, :composite, :string
    add_column :parties, :regular, :string
  end
end
