# INDEX
get "/walls" do
  authorize!


  if params[:search] && !params[:search].empty?
      @walls = Wall.where("address1 ILIKE :search OR postcode ILIKE :search OR city ILIKE :search", { search: "%#{params[:search]}%" })
    else
      @walls = Wall.all
    end 



  # @walls = Wall.all
  erb :"walls/index"
end

# NEW
get "/walls/new" do
  authorize!
  @wall = Wall.new
  @user = User.new
  erb :"walls/new"
end

# CREATE
post "/walls" do
  authorize!
  @wall = Wall.new(params[:wall])
  if @wall.save
    redirect "/walls"
  else
    erb :"walls/new"
  end
end

# SHOW
get "/walls/:id" do
  authorize!
  @wall = Wall.find(params[:id])
  if @wall
    erb :"walls/show"
  else
    redirect "/walls"
  end
end

# EDIT
get "/walls/:id/edit" do
  authorize!
  @users = User.all
  @wall = Wall.find(params[:id])
  erb :"walls/edit"
end

# UPDATE
put '/walls/:id' do
  authorize!
  @wall = Wall.find(params[:id])
  if @wall.update(params[:wall])
    redirect "/walls/#{@wall.id}"
  else
    erb :"walls/show"
  end
end

#completed walls
get "/completed_walls" do

  @walls = Wall.all
  erb :"walls/completed_walls"
end


#maps page
get "/wallsmap" do
  if current_user.user_type == "artist"
    @walls = Wall.where(artist_id: nil)
  else
    @walls = Wall.where.not(artist_id: nil)
  end
  erb :"walls/indexmap"
end

#DELETE
delete "/walls/:id/delete" do
  @wall = Wall.find(params[:id])
  @wall.destroy
  redirect "/walls"
end



