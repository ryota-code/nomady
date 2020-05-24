FactoryBot.define do
  factory :cafepost do
    sequence(:title) { |n| "TEST_TITLE#{n}" }
    sequence(:content) { |n| "TEST_CONTENT#{n}" }
  end
end