module Types
  VehicleType = GraphQL::ObjectType.define do
    name 'VehicleType'
    description 'Vehicle type'

    field :id, !types.ID
    field :vin, !types.String
    field :year, types.Int
    field :plateState, types.String
  end
end
