class Genre < ApplicationRecord
  has_many :artwork_genres, dependent: :nullify
  has_many :artworks, through: :artwork_genres

  validates :name, presence: true
end
