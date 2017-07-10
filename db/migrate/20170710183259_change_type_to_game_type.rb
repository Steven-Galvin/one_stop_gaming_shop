class ChangeTypeToGameType < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :type
    add_column :products, :game_type, :string
    add_attachment :products, :image
  end
end
