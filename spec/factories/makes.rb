FactoryBot.define do
  factory :make do
    sequence(:name) { |n| "Faker::Vehicle.make#{n}" }
  end
end
