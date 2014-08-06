# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    name "MyString"
    address "MyText"
    email "MyString"
    pay_type "MyString"
  end
end
