class AddColumnToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :igst, :decimal
  end
end
