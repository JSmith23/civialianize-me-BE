class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :name
      t.string :category
      t.string :url
      t.string :phone

      t.timestamps
    end
  end
end
