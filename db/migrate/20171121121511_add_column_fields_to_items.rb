class AddColumnFieldsToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :cgst, :decimal
    add_column :items, :sgst, :decimal
  end
end
