class Customer < ApplicationRecord
  # has_many :orders
  validates :first_name, :email, :login_pw, presence: true
  # has_many :artworks, through: :orders
end

# class Patient < ApplicationRecord
#   has_many :appointments
#   has_many :physicians, through: :appointments
# end
