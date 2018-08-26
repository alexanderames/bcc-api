FactoryBot.define do
  factory :option do
    transmission { 'Faker::Vehicle.transmission' }
    drivetrain { 'Faker::Vehicle.drive_type' }
    fuel_type { 'Faker::Vehicle.fuel_type' }
    style { 'Faker::Vehicle.style' }
    color { 'Faker::Vehicle.color' }

    model
  end
end
