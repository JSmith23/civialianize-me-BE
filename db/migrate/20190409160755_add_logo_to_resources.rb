class AddLogoToResources < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :logo, :string
  end
end
