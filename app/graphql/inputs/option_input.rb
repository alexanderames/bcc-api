Inputs::OptionInput = GraphQL::InputObjectType.define do
  name 'OptionInput'
  description 'options for a vehicle model'
  argument :doorCount, types.Int
  argument :transmission, types.String
  argument :drivetrain, types.String
  argument :fuelType, types.String
  argument :style, types.String
  argument :color, !types.String
end
