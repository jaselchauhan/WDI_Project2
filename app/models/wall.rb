# require 'carrierwave/orm/activerecord'
# require_relative '../uploaders/wall_uploader'

class Wall < ActiveRecord::Base

  belongs_to :artist,  foreign_key: "artist_id", class_name: "User"
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"

  has_many :comments

  # mount_uploader :image, WallPicUploader
  
end
