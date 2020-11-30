class Event < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings

  include PgSearch
  pg_search_scope :search, against: [:location, :sport]

  enum level: { Beginner: 1, Intermediate: 2, Advanced: 3, Pro: 4 }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
