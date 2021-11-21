class Estado < ApplicationRecord
  has_many :pontes, dependent: :destroy
  has_many :ritmos, through: :pontes


  validates :nome, presence: true
end
