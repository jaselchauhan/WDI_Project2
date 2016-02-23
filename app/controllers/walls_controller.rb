# INDEX
get "/walls" do
  authorize!
  @walls = Wall.all
  erb :"walls/index"
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

#completed walls index
get "/completed_walls" do
  authorize!
  @walls = Wall.all
  erb :"walls/completed_walls"
end


# EDIT
get "/walls/:id/edit" do
  authorize!
  @wall = Wall.find(params[:id])
  erb :"walls/edit"
end