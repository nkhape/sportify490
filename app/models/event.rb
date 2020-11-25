class Event < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings

  enum level: [:Beginner, :Intermediate, :Advanced, :Pro]
end
