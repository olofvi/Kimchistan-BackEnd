class ChangeColumnNameRestaurants < ActiveRecord::Migration[5.1]
  def change
    rename_column :restaurants, :hours, :opening_hours
  end
end
