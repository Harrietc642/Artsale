class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :artwork
  validates :date, presence: true
end
