class AddOrderhoursToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :order_hours, :string
  end
end
