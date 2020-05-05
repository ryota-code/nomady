FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "TEST_NAME#{n}"}
    sequence(:email) { |n| "TEST#{n}@example.com"}
    sequence(:detail) { |n| "TEST_DETAIL#{n}"}
    sequence(:password) {"aaa"}
  end
end