class Event < ApplicationRecord
  belongs_to :user_id
  has_many :users, through: :bookings
  has_many :bookings
end
