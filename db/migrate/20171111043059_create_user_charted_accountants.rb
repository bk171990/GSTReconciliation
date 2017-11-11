class CreateUserChartedAccountants < ActiveRecord::Migration[5.1]
  def change
    create_table :user_charted_accountants do |t|
      t.references :user, foreign_key: true
      t.references :charted_accountant, foreign_key: true

      t.timestamps
    end
  end
end
