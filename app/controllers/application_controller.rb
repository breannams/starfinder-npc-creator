require './config/environment'
require 'rack-flash'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "random_generated_number"
    use Rack::Flash, :sweep => true
    
  end

  get "/" do
    if !logged_in?
    erb :welcome
    else
      redirect to '/users/home'
    end
  end
  
  get '/careers' do
    erb :career
  end


  def logged_in?
    !!session[:user_id]
  end

  def current_user
  @current_user ||= User.find_by(id: session[:user_id])
  end

end
