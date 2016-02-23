require_relative "../app/models/user.rb"
require_relative "../app/models/wall.rb"
require_relative "../app/models/comment.rb"

User.destroy_all
Wall.destroy_all
Comment.destroy_all

[
  {
    username: "paimei", 
    first_name: "pai",
    last_name: "mei",
    email: "pai@mei.com",
    image: "http://www.fillmurray.com/300/300",
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
    image: "http://www.fillmurray.com/300/300",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "wall_owner",
    password: "patient",
  },
    
    {
      username: "renaissance_man", 
      first_name: "leonardo",
      last_name: "di vinci",
      email: "goldenratio@gmail.com",
      image: "http://www.fillmurray.com/300/300",
      bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

  Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
      user_type: "artist",
      password: "password",
    },

      
      {
        username: "drunkhippo", 
        first_name: "drunk",
        last_name: "hippo",
        email: "walle2@gmail.com",
        image: "http://www.fillmurray.com/300/300",
        bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

    Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
        user_type: "wall_owner",
        password: "password",
      }














].each do |user|
  User.create!(user)
end


[
  { title: "I want my front door painted - any takers?",
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    location: "london",
    owner_id: "",
    artist_id: ""

  },
 
  { title: "This is my house wall", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    location: "essex",
    owner_id: "",
    artist_id: "" 

  },

  { title: "garage needs a fresh coat", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    location: "east",
    owner_id: "",
    artist_id: ""

  },
  
  { title: "paint me!", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    location: "bandit county",
    owner_id: "",
    artist_id: "" 

  }

].each do |wall|
  Wall.create!(wall)
end

[
  { title: "I want my front door painted - any takers?",
    comment: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente cumque ullam accusamus, iste, quo neque rerum reiciendis voluptatem veniam inventore, accusantium labore perspiciatis ex voluptatibus fugiat dolore soluta. Repellat, sunt?"

  },
 
  { title: "This is my house wall", 
   comment: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa maiores, rem! Soluta et voluptas, libero porro, placeat harum doloribus ipsam nesciunt dicta alias, atque aliquam odio laborum enim, sed ea."

  },

  { title: "garage needs a fresh coat", 
   comment: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit at soluta quibusdam fuga minus, quas facilis consequatur veritatis asperiores nihil laboriosam rerum maiores dolore ex magnam ratione tenetur quos ipsum!"

  },
  
  { title: "paint me!", 
    comment: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit accusamus, non dolorum fuga, est ipsa quasi odit error, doloremque aliquid explicabo nesciunt voluptatum iste iusto ex recusandae eaque, a adipisci."

  }

].each do |comment|
  Comment.create!(comment)
end



