class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phonenumber, :description, :email
  attribute :order_hours, key: 'orderhours'
  attribute :opening_hours, key: 'openinghours'
end