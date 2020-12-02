class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :posts, dependent: :destroy
  has_many :users, through: :bookings
  validates :date, presence: true 

  include PgSearch::Model
  pg_search_scope :global_search, 
  against: [:location, :sport, :level, :date]

  pg_search_scope :date_search,
  against: [:date]

  pg_search_scope :sport_search,
  against: [:sport],
  using: {
    tsearch: { prefix: true }
  }

  pg_search_scope :location_search,
  against: [:location],
  using: {
    tsearch: { prefix: true }
  }

  pg_search_scope :level_search,
  against: [:level]

  enum level: { Beginner: 1, Intermediate: 2, Advanced: 3, Pro: 4 }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
