
class SignupLoginLogoutController < ApplicationController
 
   
    get '/registrations/signup' do
        if !logged_in?
            erb :'/registrations/signup'
        else
            redirect to '/users/home'
        end
    end
    
    post '/registrations' do
        @user = User.new(username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation])
        @user.save
        if @user.save
            session[:user_id] = @user.id
            redirect to '/users/home'
        else
            flash.now[:error] = "The information you entered is not valid."
            erb :'/registrations/signup'
        end
    
    end

    get '/sessions/login' do
        if !logged_in?
        erb :'sessions/login'
        else
        redirect to '/users/home'
        end
    end

    post '/sessions' do
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect to '/users/home'
        else
            flash.now[:error] = "The username or password you entered is incorrect. Please try again."
            erb :'/sessions/login'
        end
        
    end

    get '/users/home' do
        if logged_in?
        @user = User.find(session[:user_id])
        erb :'/users/home'
        else
          flash[:error] = "You must be logged in to see your npc creations!"
          redirect to '/'
        end
    end


    get '/sessions/logout' do
        if logged_in?
        session.clear
        end
        redirect to '/'
    end

end