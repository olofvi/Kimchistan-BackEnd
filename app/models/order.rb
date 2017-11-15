class Order < ApplicationRecord
  validates_presence_of :dish_name
  validates_presence_of :dish_quantity
  validates_presence_of :customer_name
  validates_inclusion_of :delivery, in: [true, false]
end
