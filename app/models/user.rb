class User < ApplicationRecord
  has_many :aliens
  has_many :bookings

  validates :username, presence: true
end
