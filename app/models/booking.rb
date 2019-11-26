class Booking < ApplicationRecord
  belongs_to :alien
  belongs_to :user
end
