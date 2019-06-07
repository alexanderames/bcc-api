class Model < ApplicationRecord
  belongs_to :make
  has_many :options
  accepts_nested_attributes_for :options
  validates :name, presence: true, uniqueness: true
end
