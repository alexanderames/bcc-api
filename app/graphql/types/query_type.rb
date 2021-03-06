module Types
  QueryType = GraphQL::ObjectType.new.tap do |root_type|
    root_type.name = 'Query'
    root_type.description = 'The query root'
    root_type.interfaces = []
    root_type.fields = Util::FieldCombiner.combine([
      QueryTypes::MakeQueryType,
      QueryTypes::ModelQueryType,
      QueryTypes::OptionQueryType,
      QueryTypes::VehicleQueryType
    ])
  end
end
