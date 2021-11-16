class Ritmo < ApplicationRecord
  has_many :pontes

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
