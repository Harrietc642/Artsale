class Inspiration < ApplicationRecord
  has_many :artworks
  validates :name, :nationality, presence:true
  validates :name, uniqueness: true
end
