class Sport < ApplicationRecord
  has_many :events
  has_many :users, though: :user_sports
end
