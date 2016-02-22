# INDEX
get "/walls" do
  @walls = Wall.all
  erb :"walls/index"
end


# SHOW
get "/walls/:id" do
  @wall = Wall.find(params[:id])
  if @wall
    erb :"walls/show"
  else
    redirect "/walls"
  end
end
