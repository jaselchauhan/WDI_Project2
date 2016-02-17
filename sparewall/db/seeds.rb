require_relative "../models/Wall.rb"

Wall.destroy_all

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

