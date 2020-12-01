class Booking < ApplicationRecord
  belongs_to :event
  belongs_to :user

  enum status: { pending: 1, approved: 2, cancelled: 3 }
end
