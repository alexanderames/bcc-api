module QueryTypes
  ModelQueryType = GraphQL::ObjectType.define do
    name 'ModelQueryType'
    description 'The model query type'

    field :models, types[Types::ModelType], 'returns all makes' do
      resolve ->(_obj, _args, _ctx) { Model.all }
    end
  end
end
