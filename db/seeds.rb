require 'faker'

# create 5 makes
5.times do
  Make.create(
    name: Faker::Vehicle.make
  )
end

makes = Make.all

# for each make a model
makes.each { |make| make.models.create(name: Faker::Vehicle.model(make.name)) }

# create a vehicle with corresponding make
makes.each do |make|
  Vehicle.create(
    make_id: make.id,
    vin: Faker::Vehicle.vin,
    year: Faker::Vehicle.year,
    plate_state: Faker::Address.state
  )
end

models = Model.all

# create options for each model
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
