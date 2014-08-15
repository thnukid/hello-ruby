FactoryGirl.define do
  factory :product do
    title {Faker::Lorem.characters(15)}
    description 'Product'
    price 1.00
    locale 'en'
  end
end
