module Types
  MakeType = GraphQL::ObjectType.define do
    name 'MakeType'
    description 'vehicle make type'

    field :id, !types.ID
    field :name, !types.String
    field :models, types[Types::ModelType] do
      resolve ->(obj, _args, _ctx) { obj.models }
    end
    field :vehicles, types[Types::VehicleType] do
      resolve ->(obj, _args, _ctx) { obj.vehicles }
    end
  end
end
