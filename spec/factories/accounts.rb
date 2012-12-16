# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    amount 1.5
    user nil
    name "MyString"
  end
end
