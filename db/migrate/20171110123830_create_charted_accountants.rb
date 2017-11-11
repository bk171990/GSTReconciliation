class CreateChartedAccountants < ActiveRecord::Migration[5.1]
  def change
    create_table :charted_accountants do |t|
      t.string :name
      t.string :phn_no
      t.string :address
      t.string :email
      t.string :firm_name
      t.string :ca_no

      t.timestamps
    end
  end
end
