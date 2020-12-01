class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :posts, dependent: :destroy
  has_many :users, through: :bookings


  include PgSearch::Model
  pg_search_scope :global_search,
   against: [:location, :sport, :date, :price, :capacity, :level],
   using: {
    tsearch: { prefix: true }
  }

  pg_search_scope :location_search,
  against: [:location],
  using: {
    tsearch: { prefix: true }
  }

  enum level: { Beginner: 1, Intermediate: 2, Advanced: 3, Pro: 4 }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
