require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "random_generated_number"
  end

  get "/" do
    if !logged_in?
    erb :welcome
    else
      redirect to '/users/home'
    end
  end

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    User.find(session[:user_id])
  
  end



end
