RSpec.describe QueryTypes::OptionQueryType do
  types = GraphQL::Define::TypeDefiner.instance

  let(:options) { create_list(:option, 2) }

  describe 'querying all options' do
    it 'has a :options that returns a Option type' do
      expect(subject).to have_field(:options).that_returns(types[Types::OptionType])
    end

    it 'returns all our created options' do
      query_result = subject.fields['options'].resolve(nil, nil, nil)

      options.each do |option|
        expect(query_result.to_a).to include(option)
      end

      expect(query_result.count).to eq(options.count)
    end
  end
end
