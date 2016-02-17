get '/walls' do
  @walls = Wall.all
  erb :'walls/index'
end


get '/walls/new' do
  @walls = Wall.all
  erb :'walls/new'
end

# create
post "/walls" do
  @wall = Wall.create!(params[:wall])
  redirect("/walls/#{@wall.id}")
end

#show
get "/walls/:id" do
  @wall = Wall.find(params[:id])
  erb(:"walls/show")
end

# edit
get "/walls/:id/edit" do
  @wall = Wall.find(params[:id])
  erb(:"walls/edit")
end

# update
post "/walls/:id" do
  @wall = Wall.find(params[:id])
  @wall.update(params[:wall])
  redirect("/walls/#{@wall.id}")
end

# # destroy
post "/walls/:id/delete" do
  @wall = Wall.find(params[:id])
  @wall.destroy
  redirect("/walls")
end