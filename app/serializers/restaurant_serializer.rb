class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phonenumber, :hours, :description
end