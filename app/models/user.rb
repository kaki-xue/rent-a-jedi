class User < ApplicationRecord
  has_many :aliens, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
