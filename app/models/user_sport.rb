class UserSport < ApplicationRecord
  belongs_to :user_id
  belongs_to :sport_id
end
