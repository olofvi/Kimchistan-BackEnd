class AddColumnToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :dish_name, :string
    add_column :orders, :dish_quantity, :integer
    add_column :orders, :customer_name, :string
    add_column :orders, :delivery, :boolean
  end
end
