FactoryGirl.define do 
  factory :user do
    sequence(:first_name) { |n| "test#{n}" }
    sequence(:last_name) { |n| "lastnametest#{n}" }
    sequence(:email) { |n| "test#{n}@test.com" }
    password '123456'
    password_confirmation '123456'
  end
end
