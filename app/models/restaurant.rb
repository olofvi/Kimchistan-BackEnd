class Restaurant < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :phonenumber
  validates_presence_of :hours
  validates_presence_of :description
  validates_presence_of :order_hours
end
