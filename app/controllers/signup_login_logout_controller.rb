class SignupLoginLogoutController < ApplicationController
   

    get '/registrations/signup' do
        if !logged_in?
            erb :'/registrations/signup'
        else
            redirect to '/users/home'
        end
    end
    
    post '/registrations' do
        @user = User.new(username: params[:username], password: params[:password])
        @user.save
        session[:user_id] = @user.id
        if @user.save
            redirect to '/users/home'
        else 
            erb :'/registrations/error'
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
            erb :'/sessions/error'
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
    
        
end