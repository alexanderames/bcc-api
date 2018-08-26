module QueryTypes
  MakeQueryType = GraphQL::ObjectType.define do
    name 'MakeQueryType'
    description 'The makes query type'

    field :makes, types[Types::MakeType], 'returns all makes' do
      resolve ->(_obj, _args, _ctx) { Make.all }
    end
  end
end
