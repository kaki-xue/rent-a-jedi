class User < ApplicationRecord
  has_many :aliens
  has_many :bookings,  dependent: :destroy

  validates :username, presence: true
end
