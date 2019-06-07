require 'rails_helper'

RSpec.describe Mutations::CreateListing do
  # if you initialize the mutation but use nil and empty hash for the object and context
  let(:migration) { Mutations::CreateListing.new(object: nil, context: {}) }
  # This allows me to hit the resolve method directly with the proper params

  describe 'mutation creates a listing' do
    let(:model) { create(:model) }
    let(:vehicle) { create(:vehicle) }
    let(:make) { create(:make) }

    it 'associates make model and vehicle' do
      result = migration.resolve(
        model: model,
        vehicle: vehicle,
        name: make.name
      )

      expect(result[:make].model).to eq(model)
      expect(result[:make].name).to eq(make.name)
      expect(result[:errors]).to be_empty
    end
  end
end
