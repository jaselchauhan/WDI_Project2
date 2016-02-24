# require 'carrierwave'

require_relative "../app/models/user.rb"
require_relative "../app/models/wall.rb"
require_relative "../app/models/comment.rb"

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

User.destroy_all
Wall.destroy_all
Comment.destroy_all

[
  {
    username: "paimei",
    first_name: "pai",
    last_name: "mei",
    email: "paimei@gmail.com",
    image: "http://images.uncyc.org/pt/thumb/4/40/Pai_Mei.jpg/250px-Pai_Mei.jpg",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

    Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "artist",
    password: "pai",

  },


    {
      username: "renaissance_man", 
      first_name: "leonardo",
      last_name: "di vinci",
      email: "goldenratio@gmail.com",
      image: "http://www.fillmurray.com/302/302",
      bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

  Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
      user_type: "artist",
      password: "password",
    },


  {
    username: "prancingelephant", 
    first_name: "prancing",
    last_name: "elephant",
    email: "prancingelephant@gmail.com",
    image: "http://www.fillmurray.com/302/302",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

  Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "artist",
    password: "password",
  },


  {
    username: "hungrysalmon", 
    first_name: "hungry",
    last_name: "salmon",
    email: "hungrysalmon@gmail.com",
    image: "http://www.fillmurray.com/302/302",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

  Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "artist",
    password: "password",
  },

  {
    username: "kingofthejungle", 
    first_name: "majestic",
    last_name: "lion",
    email: "kingofthejungle@gmail.com",
    image: "http://www.fillmurray.com/302/302",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

  Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "artist",
    password: "password",
  },


  {
    username: "laughingfrog", 
    first_name: "laughing",
    last_name: "frog",
    email: "laughingfrog@gmail.com",
    image: "http://www.fillmurray.com/302/302",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

  Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "artist",
    password: "password",
  },

  {
    username: "dancinggiraffe", 
    first_name: "having a",
    last_name: "laugh",
    email: "dancinggiraffe@gmail.com",
    image: "http://www.fillmurray.com/302/302",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

  Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "artist",
    password: "password",
  },

  {
    username: "creepingmonkey", 
    first_name: "creeping",
    last_name: "monkey",
    email: "creepingmonkey@gmail.com",
    image: "http://www.fillmurray.com/302/302",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

  Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "artist",
    password: "password",
  },

  
  {
    username: "wall-E", 
    first_name: "patient",
    last_name: "buffalo",
    email: "walle@gmail.com",
    image: "http://www.fillmurray.com/301/301",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

  Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "wall_owner",
    password: "password",
  },
    
    
  {
    username: "drunkhippo", 
    first_name: "drunk",
    last_name: "hippo",
    email: "drunkhippo@gmail.com",
    image: "http://www.fillmurray.com/303/303",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "wall_owner",
    password: "password",
  },

  {
    username: "ravingsnail", 
    first_name: "raving",
    last_name: "snail",
    email: "ravingsnail@gmail.com",
    image: "http://www.fillmurray.com/303/303",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "wall_owner",
    password: "password",
  },
  {
    username: "wallowner", 
    first_name: "jim",
    last_name: "smith",
    email: "jimsmith@gmail.com",
    image: "http://www.fillmurray.com/303/303",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "wall_owner",
    password: "password",
  },
  {
    username: "artlover", 
    first_name: "kyla",
    last_name: "jones",
    email: "kylajones@gmail.com",
    image: "http://www.fillmurray.com/303/303",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

    Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "wall_owner",
    password: "password",
  },
  {
    username: "artlover2", 
    first_name: "jill",
    last_name: "guevara",
    email: "jillguevara@gmail.com",
    image: "http://www.fillmurray.com/303/303",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

    Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "wall_owner",
    password: "password",
  },
  {
    username: "ihaveasparewall", 
    first_name: "kenneth",
    last_name: "maguire",
    email: "kennethmaguire@gmail.com",
    image: "http://www.fillmurray.com/303/303",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

    Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "wall_owner",
    password: "password",
  },
  {
    username: "loveart", 
    first_name: "bilbo",
    last_name: "spaggins",
    email: "bilbospaggins@gmail.com",
    image: "http://www.fillmurray.com/303/303",
    bio: "Sustainable tumblr meh echo park. Mlkshk skateboard beard pabst hammock, tumblr chicharrones cliche banjo 90's sustainable man bun williamsburg pour-over. Skateboard chartreuse chia, cold-pressed before they sold out offal whatever plaid portland. Health goth wolf mixtape artisan chillwave, taxidermy cornhole. Cronut quinoa stumptown pork belly, cray chicharrones shabby chic drinking vinegar. Aesthetic pour-over shabby chic, humblebrag polaroid listicle locavore poutine everyday carry tattooed actually tilde. Cred four loko bespoke fixie kinfolk fashion axe heirloom hashtag, lo-fi cliche crucifix farm-to-table.

    Vice meh green juice, +1 shabby chic vinyl williamsburg venmo mumblecore. Man bun VHS marfa mumblecore 3 wolf moon XOXO jean shorts, portland migas small batch. Listicle williamsburg viral microdosing fingerstache, blog pabst drinking vinegar retro craft beer bushwick cornhole tacos plaid. Chartreuse letterpress pour-over, tofu microdosing lo-fi food truck typewriter wolf organic before they sold out selvage ethical tumblr keffiyeh. Cold-pressed four dollar toast salvia affogato sartorial pour-over, irony actually kitsch franzen polaroid thundercats squid viral. Green juice slow-carb flexitarian bicycle rights, viral semiotics fanny pack kitsch tofu whatever cronut. Cronut cold-pressed YOLO skateboard fixie.", 
    user_type: "wall_owner",
    password: "password",
  }


].each do |user|
  User.create!(user)
end

# image = File.open("#{APP_ROOT}/public/uploads/grungy-brick-wall.jpg");

# p image

[
  { title: "I want my front door painted - any takers?",
    is_painted: false, 
    image: 'http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg',
    city: "london",
    owner_id: "9",
    artist_id: "",
    lat:51.5117 ,
    lng: -0.1275

  },
 
  { title: "This is my house wall", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "10",
    artist_id: "",
    lat:51.5211 ,
    lng: -0.0713

  },


  { title: "wall in london", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "stratford",
    owner_id: "10",
    artist_id: "",
    lat:51.56228,
    lng: -0.0529

  },  
  

  { title: "garage needs a fresh coat", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "",
    artist_id: "",
    lat:51.5186 ,
    lng: -0.0813

  },
  

  { title: "needs some paint", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "stratford",
    owner_id: "9",
    artist_id: "",
    lat:51.5226 ,
    lng: -0.1352

  },


  { title: "paint me!", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "11",
    artist_id: "",
    lat:51.5152 ,
    lng: -0.0722

  },
  
  { title: "completed test wall!", 
    is_painted: true, 
    image: "http://pre01.deviantart.net/d68d/th/pre/i/2013/216/5/c/background__painted_brick_wall_by_cesstrelle-d6glbjn.jpg",
    city: "london",
    owner_id: "12",
    artist_id: "1" ,
    lat:51.4966 ,
    lng: -0.1448

  },
    
  { title: "up for decoration", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "13",
    artist_id: "",
    lat:51.6162 ,
    lng: -0.0524

  },  
  { title: "my front wall is a canvas", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "14",
    artist_id: "",
    lat:51.8742 ,
    lng: -0.0522

  },  
  { title: "up for painting?", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "15",
    artist_id: "",
    lat:51.0152 ,
    lng: -0.0422

  },  
  { title: "artist required", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "16",
    artist_id: "",
    lat:53.4192 ,
    lng: -0.0852

  },  
  { title: "this wall needs painting", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "9",
    artist_id: "",
    lat:51.5472 ,
    lng: -0.0262

  },  
  { title: "looking for someone to decorate wall", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "9",
    artist_id: "",
    lat:51.3182 ,
    lng: -0.1022

  },  
  { title: "what a wall", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "9",
    artist_id: "",
    lat:51.5912 ,
    lng: -0.0482

  },  
  { title: "needs decoration", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "9",
    artist_id: "",
    lat:51.5558 ,
    lng: -0.0128

  },  
  { title: "paint me", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "9",
    artist_id: "",
    lat:51.5352 ,
    lng: -0.0128

  },  
  { title: "wall in london", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "10",
    artist_id: "",
    lat:51.5218 ,
    lng: -0.0372

  },  
  { title: "paint me", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "10",
    artist_id: "",
    lat:51.5012 ,
    lng: -0.0585

  },  
  { title: "london wall", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "stratford",
    owner_id: "10",
    artist_id: "",
    lat:51.5009 ,
    lng: -0.0322

  },  
  { title: "artist wanted - alive", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "14",
    artist_id: "",
    lat:51.5752 ,
    lng: -0.0432

  },  
  { title: "graffiti", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "stratford",
    owner_id: "14",
    artist_id: "",
    lat:51.4952 ,
    lng: -0.0412

  },  
  { title: "paint", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "stratford",
    owner_id: "14",
    artist_id: "",
    lat:51.4872 ,
    lng: -0.0562

  },  
    
  { title: "paint me!", 
    is_painted: false, 
    image: "http://image.naldzgraphics.net/2011/02/24-grungy-brick-wall.jpg",
    city: "london",
    owner_id: "10",
    artist_id: "",
    lat:51.5900 ,
    lng: -0.0780

  },


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



