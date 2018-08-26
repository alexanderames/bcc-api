module Types
  ModelType = GraphQL::ObjectType.define do
    name 'ModelType'
    description 'vehicle model type'

    field :id, !types.ID
    field :name, !types.String
  end
end
