class Vehicle < ApplicationRecord
  belongs_to :make
  validates :vin, presence: true, uniqueness: true
end
