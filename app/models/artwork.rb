class Artwork < ApplicationRecord
  belongs_to :inspiration

  # has_many :appointments
  # has_many :patients, through: :appointments

  has_many :orders
  has_many :customers, through: :orders
  has_one_attached :image
  validates :title, :price, :brand, presence: true
  validates :price, numericality: true
  paginates_per 5
  # validates :title, uniqueness: true
  #enum inspiration: { fantasy: 1, romance: 2, horror: 3, fiction: 4, poetry: 5 }

  has_many :artwork_genres
  #has_many :genres, through :artwork_genres
  #accepts_nested_attributes_for :artwork_genres, allow_destroy: true
end
