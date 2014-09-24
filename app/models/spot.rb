class Spot < ActiveRecord::Base
  has_many :comments
  has_many :user_spots
  has_many :users, through: :user_spot
  has_many :photos



   has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
