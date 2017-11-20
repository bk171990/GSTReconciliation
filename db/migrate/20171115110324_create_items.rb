class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :dogns
      t.string :item_hsn_no
      t.string :uom
      t.string :qty
      t.string :rate
      t.string :taxable_value

      t.timestamps
    end
  end
end
