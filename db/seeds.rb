require_relative "../app/models/user.rb"
require_relative "../app/models/wall.rb"

User.destroy_all
Wall.destroy_all

[
  {
    username: "paimei", 
    first_name: "pai",
    last_name: "mei",
    email: "pai@mei.com",
    image: "http://www.fillmurray.com/200/300",
    bio: "i'm a dogg", 
    user_type: "artist",
    password: "pai",

  },
  
  {
    username: "wall-E", 
    first_name: "Patient",
    last_name: "Buffalo",
    email: "walle@gmail.com",
    image: "http://www.fillmurray.com/201/301",
    bio: "i'm a wall-owner", 
    user_type: "wall_owner",
    password: "patient",
  }
].each do |user|
  User.create!(user)
end


[
  {
    is_painted: true, 
    image_before: "http://www.fillmurray.com/g/201/301",
    image_after: "http://www.fillmurray.com/201/301",
    location: "london",
    owner_ID: "",
    artist_ID: ""

  },
 
  {
    is_painted: true, 
    image_before: "http://www.fillmurray.com/g/202/302",
    image_after: "http://www.fillmurray.com/202/302",
    location: "essex",
    owner_ID: "",
    artist_ID: "" 

  }

].each do |wall|
  Wall.create!(wall)
end



