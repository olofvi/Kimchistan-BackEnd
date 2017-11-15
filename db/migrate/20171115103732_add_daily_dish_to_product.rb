class AddDailyDishToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :daily_dish_for, :string
  end
end
