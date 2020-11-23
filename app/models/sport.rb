class Sport < ApplicationRecord
  has_many :events
  has_many :users, through: :user_sports
end
