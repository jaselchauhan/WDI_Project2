helpers do  

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def is_logged_in?
    !!current_user
  end

  def is_artist?
    current_user.user_type == "artist"
  end

  def authorize!
    unless is_logged_in?
      flash[:danger] = "You must be logged in to see this page"
      redirect '/login'
    end
  end

    
  def gmap_key
    ENV['GMAPS_BROWSER_KEY']
  end


end


#create helper functions for checking if the logged in user is an artist or a wallowner - these will determine what user can see.


