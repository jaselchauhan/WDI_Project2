#get the login form
get '/login' do 

  @user = User.new

  erb :"sessions/new"

end

#handle the login form

post '/login' do 

  #find user by email address
  user = User.find_by_email(params[:user][:email])

  #if there is a user, chec k if therir password is corerct
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id

    flash[:success] = "Welcome!"
    redirect "users/#{user.id}"
  else
    flash[:danger] = "Incorrect!"
    redirect '/login'
  end
end


#delete the session

get '/logout' do 

  session.clear
  redirect "/login"

end
