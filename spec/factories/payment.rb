FactoryBot.define do
  factory :payment do
    stripeEmail 'example@example.com'
    amount 500
  end
end
