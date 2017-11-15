FactoryBot.define do
  factory :product do
    name 'MyString'
    price 1
    image 'Image'
    description 'Description'
    of_type 'dish'
    available true
    daily_dish_for 0
  end
end
