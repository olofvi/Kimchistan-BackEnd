FactoryBot.define do
  factory :order do
    dish_name 'bibimbap'
    dish_quantity 2
    customer_name 'Thomas Ochman'
    delivery false
    created_at '2017-11-10T09:34:11.608Z'
  end
end
