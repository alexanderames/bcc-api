require 'rails_helper'

RSpec.describe Model, type: :model do
  it 'has a valid factory' do
    expect(build(:model)).to be_valid
  end

  let(:make) { create(:make) }
  let(:attributes) do
    {
      name: Faker::Vehicle.model,
      make: make
    }
  end

  let(:model) { create(:model, **attributes) }

  describe 'model validations' do
    it { expect(model).to allow_value(attributes[:name]).for(:name) }
    it { expect(model).to validate_presence_of(:name) }
    it { expect(model).to validate_uniqueness_of(:name) }
  end

  describe 'model associations' do
    it { expect(model).to belong_to(:make) }
    it { expect(model).to accept_nested_attributes_for(:options) }
  end
end
