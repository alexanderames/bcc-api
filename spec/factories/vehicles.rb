FactoryBot.define do
  factory :vehicle do
    vin { 'Faker::Vehicle.vin' }
    year { 'Faker::Vehicle.year' }
    plate_state { 'Faker::Address.state' }

    make
  end
end
