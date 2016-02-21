require_relative "../app/models/user.rb"

User.destroy_all

[
  {
    username: "Tha Doggfather", 
    email: "snoop@dogg.com",
    location: "the dogg pound", 
    bio: "i'm a dogg", 

    rating: 0
  },
  {
    username: "Pai Mei", 
    email: "pai@mei.com",
    location: "somewhere in the mountains...", 
    bio: "i can stand on a sword", 

    rating: 0
  }
].each do |user|
  User.create!(user)
end

