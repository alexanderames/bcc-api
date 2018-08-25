require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  it 'has a valid factory' do
    expect(build(:vehicle)).to be_valid
  end

  let(:make) { create(:make) }
  let(:attributes) do
    {
      vin: Faker::Vehicle.vin,
      year: Faker::Vehicle.year,
      plate_state: Faker::Address.state,
      make: make
    }
  end

  let(:vehicle) { create(:vehicle, **attributes) }

  describe 'model validations' do
    it { expect(vehicle).to allow_value(attributes[:vin]).for(:vin) }
    it { expect(vehicle).to allow_value(attributes[:year]).for(:year) }
    it { expect(vehicle).to allow_value(attributes[:plate_state]).for(:plate_state) }
    it { expect(vehicle).to validate_presence_of(:vin) }
    it { expect(vehicle).to validate_uniqueness_of(:vin) }
  end

  describe 'model associations' do
    it { expect(vehicle).to belong_to(:make) }
  end
end
