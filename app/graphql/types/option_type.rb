module Types
  OptionType = GraphQL::ObjectType.define do
    name 'OptionType'
    description 'vehicle option type'

    field :id, !types.ID
    field :doorCount, types.String
    field :transmission, types.String
    field :drivetrain, types.String
    field :fuelType, types.String
    field :style, types.String
    field :color, types.String
  end
end
