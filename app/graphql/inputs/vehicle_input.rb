Inputs::VehicleInput = GraphQL::InputObjectType.define do
  name 'VehicleInput'
  description 'vehicles for a vehicle model'
  argument :vin, types.String
  argument :year, !types.Int
  argument :plateState, types.String
end
