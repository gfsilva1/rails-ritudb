class Estado < ApplicationRecord
  has_many :pontes, dependent: :destroy
  has_many :ritmos, through: :pontes


  validates :nome, uniqueness: true, presence: true
end
