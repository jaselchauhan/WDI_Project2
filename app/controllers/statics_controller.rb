# require_relative "../helpers/authentication"

get '/' do 
  puts "current USER!"
  # p current_user.user_type
  erb :'static/home'
end

get '/about' do 
  erb :'static/about'
end
