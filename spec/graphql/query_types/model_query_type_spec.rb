RSpec.describe QueryTypes::ModelQueryType do
  types = GraphQL::Define::TypeDefiner.instance

  let(:models) { create_list(:model, 2) }

  describe 'querying all models' do
    it 'has a :models that returns a Model type' do
      expect(subject).to have_field(:models).that_returns(types[Types::ModelType])
    end

    it 'returns all our created models' do
      query_result = subject.fields['models'].resolve(nil, nil, nil)

      models.each do |model|
        expect(query_result.to_a).to include(model)
      end

      expect(query_result.count).to eq(models.count)
    end
  end
end
