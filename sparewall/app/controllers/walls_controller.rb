# INDEX
get "/walls" do
  @wall = Wall.all
  erb :"walls/index"
end
