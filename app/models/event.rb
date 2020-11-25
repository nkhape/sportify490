class Event < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings

  enum level: [ :beginner, :intermediate, :advanced, :pro ]
end
