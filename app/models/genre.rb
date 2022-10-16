class Genre < ApplicationRecord
  has_many :artwork_genres
  has_many :artworks, through: :artwork_genres
  validates :name, presence: true, uniqueness: true
end
