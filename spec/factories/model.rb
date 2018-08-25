FactoryBot.define do
  factory :model do
    name { 'Faker::Vehicle.model' }

    make
  end
end
