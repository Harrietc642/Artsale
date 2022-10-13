class Artwork < ApplicationRecord
  belongs_to :inspiration

  validates :title, :price, :brand, presence: true
  # validates :title, uniqueness: true


  #has_many :artwork_genres
  # has_many :genres, through :movie_genres
end
