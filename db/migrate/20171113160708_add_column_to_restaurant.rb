class AddColumnToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :email, :string
  end
end
