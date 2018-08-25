require 'rails_helper'

RSpec.describe Option, type: :model do
  it 'has a valid factory' do
    expect(build(:option)).to be_valid
  end

  let(:model) { create(:model) }
  let(:attributes) do
    {
      transmission: Faker::Vehicle.transmission,
      drivetrain: Faker::Vehicle.drive_type,
      fuel_type: Faker::Vehicle.fuel_type,
      style: Faker::Vehicle.style,
      color: Faker::Vehicle.color,
      model: model
    }
  end

  let(:option) { create(:option, **attributes) }

  describe 'model validations' do
    it { expect(option).to allow_value(attributes[:transmission]).for(:transmission) }
    it { expect(option).to allow_value(attributes[:drivetrain]).for(:drivetrain) }
    it { expect(option).to allow_value(attributes[:fuel_type]).for(:fuel_type) }
    it { expect(option).to allow_value(attributes[:style]).for(:style) }
    it { expect(option).to allow_value(attributes[:color]).for(:color) }
  end

  describe 'model associations' do
    it { expect(option).to belong_to(:model) }
  end
end
