class Stroll < ApplicationRecord
  belongs_to :city
  has_many :bookings 
  has_many :dogs, through: :bookings
  belongs_to :dog_sitter
end
