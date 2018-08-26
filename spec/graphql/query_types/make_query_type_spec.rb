RSpec.describe QueryTypes::MakeQueryType do
  types = GraphQL::Define::TypeDefiner.instance

  let(:makes) { create_list(:make, 2) }

  describe 'querying all makes' do
    it 'has a :makes that returns a Make type' do
      expect(subject).to have_field(:makes).that_returns(types[Types::MakeType])
    end

    it 'returns all our created makes' do
      query_result = subject.fields['makes'].resolve(nil, nil, nil)

      makes.each do |make|
        expect(query_result.to_a).to include(make)
      end

      expect(query_result.count).to eq(makes.count)
    end
  end
end
