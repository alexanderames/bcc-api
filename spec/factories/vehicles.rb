FactoryBot.define do
  factory :vehicle do
    sequence(:vin) { |n| "1HGBH41JXMN10918#{n}" }
    year { rand(2010..2018) }
    plate_state { 'CO' }

    make
  end
end
