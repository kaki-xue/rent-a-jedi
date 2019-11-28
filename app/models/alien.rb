class Alien < ApplicationRecord

  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :image, presence: true
  validates :skill, presence: true
  validates :price_per_day, presence: true
  validates :description, presence: true
  validates :description, length: { maximum: 50 }

  include PgSearch::Model
  pg_search_scope :search_by_name_skill,
    against: %i[name skill],
    using: {
      tsearch: { prefix: true }
    }
end
