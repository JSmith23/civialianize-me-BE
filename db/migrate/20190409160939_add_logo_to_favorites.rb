class AddLogoToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :logo, :string
  end
end
