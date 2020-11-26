class Event < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings

  enum level: { beginner: 1, intermediate: 2, advanced: 3, pro: 4 }
end
