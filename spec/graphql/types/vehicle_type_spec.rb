RSpec.describe Types::VehicleType do
  types = GraphQL::Define::TypeDefiner.instance

  it 'has an :id field of ID type' do
    expect(subject).to have_field(:id).that_returns(!types.ID)
  end

  it 'has a :vin field of String type' do
    expect(subject).to have_field(:vin).that_returns(!types.String)
  end
end
