class AddPhoneToResources < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :phone, :string
  end
end
