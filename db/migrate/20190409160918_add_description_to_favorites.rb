class AddDescriptionToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :description, :string
  end
end
