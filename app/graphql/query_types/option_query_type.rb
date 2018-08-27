module QueryTypes
  OptionQueryType = GraphQL::ObjectType.define do
    name 'OptionQueryType'
    description 'The options query type'

    field :options, types[Types::OptionType], 'returns all options' do
      resolve ->(_obj, _args, _ctx) { Option.all }
    end
  end
end
