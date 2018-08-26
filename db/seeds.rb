require 'faker'

# create 20 makes
20.times do
  Make.create(
    name: Faker::Vehicle.make
  )
end

makes = Make.all

# for each make, add 5 models
makes.each_with_index { |make| make.models.create(name: Faker::Vehicle.model(make.name)) }

# create a vehicle with corresponding make
makes.each { |make|
  Vehicle.create(
    make_id: make.id,
    vin: Faker::Vehicle.vin,
    year: Faker::Vehicle.year,
    plate_state: Faker::Address.state
  )
}

models = Model.all

# make options for each model
models.each do |model|
  Option.create(
    model_id: model.id,
    door_count: Faker::Vehicle.door_count,
    transmission: Faker::Vehicle.transmission,
    drivetrain: Faker::Vehicle.drive_type,
    fuel_type: Faker::Vehicle.fuel_type,
    style: Faker::Vehicle.style,
    color: Faker::Vehicle.color
  )
end
