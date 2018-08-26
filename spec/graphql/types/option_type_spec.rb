RSpec.describe Types::OptionType do
  types = GraphQL::Define::TypeDefiner.instance

  it 'has an :id field of ID type' do
    expect(subject).to have_field(:id).that_returns(!types.ID)
  end

  it 'has a :doorCount field of String type' do
    expect(subject).to have_field(:doorCount).that_returns(types.String)
  end

  it 'has a :color field of String type' do
    expect(subject).to have_field(:color).that_returns(types.String)
  end
end
