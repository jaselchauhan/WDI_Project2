#get the register form
get '/register' do
  @user = User.new
  erb :'authentications/new'
end

#handle the form
post '/register' do  
  @user = User.new(params[:user])

  if @user.save 
    session[:user_id] = @user.id
    flash[:success] = "Thanks for registering"

    if @user.user_type == 'wall_owner'
      redirect '/walls/new'
    else
      redirect '/users'
    end
  else
    erb :'authentications/new'
  end
end