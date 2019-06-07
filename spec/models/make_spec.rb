require 'rails_helper'

RSpec.describe Make, type: :model do
  it 'has a valid factory' do
    expect(build(:make)).to be_valid
  end

  let(:attributes) do
    {
      name: 'Toyota'
    }
  end

  let(:make) { create(:make, **attributes) }

  describe 'model validations' do
    it { expect(make).to allow_value(attributes[:name]).for(:name) }
    it { expect(make).to validate_presence_of(:name) }
    it { expect(make).to validate_uniqueness_of(:name) }
  end

  describe 'model associations' do
    it { expect(make).to have_many(:models) }
    it { expect(make).to accept_nested_attributes_for(:models) }
    it { expect(make).to accept_nested_attributes_for(:vehicles) }
  end
end
