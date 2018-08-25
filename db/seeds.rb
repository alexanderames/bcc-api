require 'faker'

# create 20 makes
20.times do
  Make.create(
    name: Faker::Vehicle.make
  )
end

makes = Make.all

# for each make, add 5 models
makes.each_with_index { |make| 5.times { make.models.create(name: Faker::Vehicle.model(make.name)) } }
