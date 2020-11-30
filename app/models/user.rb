class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events
  has_many :bookings
  has_many :posts
  has_many :reviews
  has_many :joint_events, through: :bookings, source: :event
  has_one_attached :photo
end
