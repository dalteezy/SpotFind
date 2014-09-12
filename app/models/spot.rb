class Spot < ActiveRecord::Base
  has_many :comments
  has_many :user_spots
  has_many :users, through: :user_spot
  has_many :photos
end
