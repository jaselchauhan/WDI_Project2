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
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "artist",
    password: "pai",

  },
  
  {
    username: "wall-E", 
    first_name: "Patient",
    last_name: "Buffalo",
    email: "walle@gmail.com",
    image: "http://www.fillmurray.com/201/301",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "wall_owner",
    password: "patient",
  }
].each do |user|
  User.create!(user)
end


[
  {
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    location: "london",
    owner_id: "",
    artist_id: ""

  },
 
  {
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    location: "essex",
    owner_id: "",
    artist_id: "" 

  },

  {
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    location: "east",
    owner_id: "",
    artist_id: ""

  },
  
  {
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    location: "bandit county",
    owner_id: "",
    artist_id: "" 

  }


].each do |wall|
  Wall.create!(wall)
end



