class Inspiration < ApplicationRecord
  has_many :artworks, dependent: :nullify
  validates :name, :nationality, presence: true
  # rubocop:disable Rails/UniqueValidationWithoutIndex
  validates :name, uniqueness: true

  # rubocop:enable Rails/UniqueValidationWithoutIndex
end
