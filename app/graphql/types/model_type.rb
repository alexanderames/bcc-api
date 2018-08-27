module Types
  ModelType = GraphQL::ObjectType.define do
    name 'ModelType'
    description 'vehicle model type'

    field :id, !types.ID
    field :name, !types.String
    field :options, types[Types::OptionType] do
      resolve ->(obj, _args, _ctx) { obj.options }
    end
  end
end
