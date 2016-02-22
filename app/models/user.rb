require 'bcrypt'

class User < ActiveRecord::Base

  include BCrypt
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  has_secure_password

  has_many :owned_walls, class_name: "Wall", foreign_key: "owner_id"

  has_many :painted_walls, class_name: "Wall", foreign_key: "artist_id"


  def walls
    if(user_type == "wall_owner")
      owned_walls
    else
      painted_walls
    end
  end

end

