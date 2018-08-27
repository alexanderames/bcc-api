module QueryTypes
  VehicleQueryType = GraphQL::ObjectType.define do
    name 'VehicleQueryType'
    description 'The vehicles query type'

    field :vehicles, types[Types::VehicleType], 'returns all vehicles' do
      resolve ->(_obj, _args, _ctx) { Vehicle.all }
    end
  end
end
