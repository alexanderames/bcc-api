class Model < ApplicationRecord
  belongs_to :make
  has_many :options
  validates :name, presence: true, uniqueness: true
end
