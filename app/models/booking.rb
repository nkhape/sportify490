class Booking < ApplicationRecord
  belongs_to :event_id
  belongs_to :user_id
end
