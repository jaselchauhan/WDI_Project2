require_relative "../app/models/user.rb"

User.destroy_all

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
    user_type: "wall owner",
    password: "patient",
  }
].each do |user|
  User.create!(user)
end

