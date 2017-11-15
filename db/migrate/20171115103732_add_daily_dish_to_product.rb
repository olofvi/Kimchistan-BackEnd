class AddDailyDishToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :daily, :string
  end
end
