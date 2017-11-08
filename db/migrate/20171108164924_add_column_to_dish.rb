class AddColumnToDish < ActiveRecord::Migration[5.1]
  def change
    add_column :dishes, :description, :text
    add_column :dishes, :image, :string
  end
end
