require_relative "../models/Wall.rb"
require_relative "../models/User.rb"

Wall.destroy_all
User.destroy_all

[
  { 
    title: "I have a wall!", 
    description: "Ken Block practising Gymkhana. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque tempore molestias deserunt quae inventore dolores sint magnam. Molestiae fugit repellendus reiciendis voluptates, accusamus sapiente, eos, numquam mollitia neque nemo est.",
    ideal_design: "Graffiti", 
    image: "http://www.fillmurray.com/g/201/301"
  },

  { 
    title: "Wall Needs Some Color", 
    description: "Ken Block practising Gymkhana. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque tempore molestias deserunt quae inventore dolores sint magnam. Molestiae fugit repellendus reiciendis voluptates, accusamus sapiente, eos, numquam mollitia neque nemo est.",
    ideal_design: "Patterns", 
    image: "http://www.fillmurray.com/g/200/300"
  }



].each do |wall|
  Wall.create!(wall)
end


[
  {
    username: "Tha Doggfather", 
    location: "https://s3.amazonaws.com/rapgenius/1366744664_tha-doggfather-5048f1c320e29.jpg", 
    bio: "minimalist", 
    image: "sdkal;sa",
    rating: 0
  }
].each do |user|
  User.create!(user)
end


