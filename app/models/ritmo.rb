class Ritmo < ApplicationRecord
  has_many :pontes

  validates :nome, presence: true
  validates :descricao, presence: true

end
