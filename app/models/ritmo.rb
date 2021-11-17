class Ritmo < ApplicationRecord
  has_many :pontes

  validates :nome, presence: true, uniqueness: true
  validates :descricao, presence: true

end
