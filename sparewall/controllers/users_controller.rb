get '/users' do
  @users = User.all
  erb :'users/index'
end


get '/users/new' do
  @users = User.all
  erb :'users/new'
end

# create
post "/users" do
  @user = User.create!(params[:user])
  redirect("/users/#{@user.id}")
end

#show
get "/users/:id" do
  @user = User.find(params[:id])
  erb(:"users/show")
end

# edit
get "/users/:id/edit" do
  @user = User.find(params[:id])
  erb(:"users/edit")
end

# update
post "/users/:id" do
  @user = User.find(params[:id])
  @user.update(params[:user])
  redirect("/users/#{@user.id}")
end

# # destroy
post "/users/:id/delete" do
  @user = User.find(params[:id])
  @user.destroy
  redirect("/users")
end