
class SignupLoginLogoutController < ApplicationController
 
   
    get '/registrations/signup' do
        if !logged_in?
            erb :'/registrations/signup'
        else
            redirect to '/users/home'
        end
    end
    
    post '/registrations' do
        @user = User.create(username: params[:username], password: params[:password])
    
        if @user.save
            session[:user_id] = @user.id

            flash[:success] = "Thanks for signing up!!"
            redirect to '/users/home'
        else
            flash[:error] = "The information you entered is not valid."
            erb :'/registrations/signup'
        end
    end

    get '/sessions/login' do
        erb :'sessions/login'
    end

    post '/sessions' do
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect to '/users/home'
        else
            flash[:error] = "The username or password you entered is incorrect. Please try again."
            erb :'/sessions/login'
        end
        
    end

    get '/users/home' do
        if logged_in?
        @user = User.find(session[:user_id])
        erb :'/users/home'
        else
          erb :'/users/error'
        end
    end


    get '/sessions/logout' do
        session.clear
        redirect to '/'
    end

    helpers do
        def flash_types
          [:success, :notice, :warning, :error]
        end
      end
        
end