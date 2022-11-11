class Artwork < ApplicationRecord
  belongs_to :inspiration

  validates :title, :price, :brand, presence: true
  paginates_per 5
  # validates :title, uniqueness: true
  #enum inspiration: { fantasy: 1, romance: 2, horror: 3, fiction: 4, poetry: 5 }

  has_many :artwork_genres
  #has_many :genres, through :movie_genres
end
