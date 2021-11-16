class Ponte < ApplicationRecord
  belongs_to :ritmo
  belongs_to :estado

  validates :comment, length: { minimum: 6 }
  validates :ritmo_id, uniqueness: { scope: :estado_id, message: "is already in the list" }
end
