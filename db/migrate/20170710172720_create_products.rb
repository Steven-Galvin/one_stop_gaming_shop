class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :genre
      t.string :description
      t.integer :cost

      t.timestamps
    end
  end
end
