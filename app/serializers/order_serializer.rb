class OrderSerializer < ActiveModel::Serializer
  attributes :id
  attribute :created_at, key: 'createdat'
  attribute :dish_name, key: 'dishname'
  attribute :dish_quantity, key: 'dishquantity'
  attribute :customer_name, key: 'customername'
  attribute :delivery
end
