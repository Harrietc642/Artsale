class Customer < ApplicationRecord
  has_many :orders
  has_many :artworks, through: :orders
end

=begin
class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments
end
=end