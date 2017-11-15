class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  attribute :dish_name, key: 'dish-name'
  attribute :dish_quantity, key: 'dish-quantity'
  attribute :customer_name, key: 'customer-name'
  attribute :delivery
end
