class User < ActiveRecord::Base
  has_secure_password
  
  has_many :user_spots
  has_many :comments
  has_many :spots, through: :user_spots
  has_many :photos
end
