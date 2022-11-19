class ArtworkOrder < ApplicationRecord
  belongs_to :artworks
  belongs_to :orders
end
