module Mutations
  class CreateListing < BaseMutation
    argument :name, String, required: true
    argument :model, ID, required: true
    argument :vehicle, ID, required: true

    type Types::MakeType

    def resolve(name:, model:, vehicle:)
      Make.create!(
        name: name,
        models: model,
        vehicles: vehicle
      )
    end
  end
end
