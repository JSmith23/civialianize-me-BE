class CreateVaLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :va_locations do |t|
      t.string :name
      t.string :phone
      t.string :adress
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
