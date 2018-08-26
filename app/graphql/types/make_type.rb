module Types
  MakeType = GraphQL::ObjectType.define do
    name 'MakeType'
    description 'vehicle make type'

    field :id, !types.ID
    field :name, !types.String
  end
end
