class Contact < ApplicationRecord
  validates :name, :phone, presence: true
  #has_many :artworks, through: :orders
end
