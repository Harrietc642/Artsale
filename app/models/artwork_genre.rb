class ArtworkGenre < ApplicationRecord
  belongs_to :artworks
  belongs_to :genre
end
