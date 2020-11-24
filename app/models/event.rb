class Event < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  has_many :users, through: :bookings
  has_many :bookings
end
