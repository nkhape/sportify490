class Booking < ApplicationRecord
  belongs_to :event
  belongs_to :user

  enum status: { Pending: 1, Approved: 2, Cancelled: 3 }
end
