class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phonenumber, :hours, :description
  attribute :order_hours, key: 'orderhours'
end