FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "User_#{n}" }
    sequence(:email) { |n| "user_#{n}@maxfun.io" }
    password "passwo"
    password_confirmation "passwo"

    factory :admin do
      admin true
    end
  end
end