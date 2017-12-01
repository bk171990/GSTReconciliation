class AddReferencesToItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :items, :unit_of_measure, foreign_key: true
  end
end
