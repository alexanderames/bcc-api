class Make < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :models, dependent: :destroy
  has_many :vehicles
end
