class Dog < ApplicationRecord
  belongs_to :city
  has_many :bookings
  has_many :strolls, through: :bookings
  has_many :dog_sitters, through: :strolls
end
