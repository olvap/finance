# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name 'Test User'
    email 'example@example.com'
    password 'please'
    password_confirmation 'please'

    factory :another_user, class: User do
      name 'Another User'
      email 'another@example.com'
    end

  end

end
