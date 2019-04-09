class ChangePhoneToBeStringInResources < ActiveRecord::Migration[5.2]
  def change
    change_column :resources, :phone, :string
  end
end
