RSpec.describe QueryTypes::VehicleQueryType do
  types = GraphQL::Define::TypeDefiner.instance

  let(:vehicles) { create_list(:vehicle, 2) }

  describe 'querying all vehicles' do
    it 'has a :vehicles that returns a Vehicle type' do
      expect(subject).to have_field(:vehicles).that_returns(types[Types::VehicleType])
    end

    it 'returns all our created vehicles' do
      query_result = subject.fields['vehicles'].resolve(nil, nil, nil)

      vehicles.each do |vehicle|
        expect(query_result.to_a).to include(vehicle)
      end

      expect(query_result.count).to eq(vehicles.count)
    end
  end
end
