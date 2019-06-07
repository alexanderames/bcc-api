Inputs::ModelInput = GraphQL::InputObjectType.define do
  name 'ModelInput'
  argument :name, !types.String

  # nested input
  argument :option, !Inputs::OptionInput
end
