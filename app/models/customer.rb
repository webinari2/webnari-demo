class Customer < ApplicationRecord

  has_many :bookings
  has_many :workshops, through: :bookings

  validates :full_name, :contact_number, presence: true
  validates :email, presence: true, uniqueness: true

end
