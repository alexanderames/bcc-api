class Model < ApplicationRecord
  belongs_to :make
  validates :name, presence: true, uniqueness: true
end
