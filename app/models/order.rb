class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :artworks
end

=begin
class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient
end
=end