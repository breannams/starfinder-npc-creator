class SignupLoginController < ApplicationController

    get '/registrations/signup' do
        erb :'/registrations/signup'
    end
    
    post '/registrations' do
        @user = User.new(email: params[:email], password: params[:password])
        @user.save
        session[:user_id] = @user.id
        redirect to '/users/home'
    end

    get '/sessions/login' do
        erb: '/sessions/login'
    end

    post '/sessions' do
        @user = User.find_by(email: params["email"], password: params["password"])
        if @user
          session[:user_id] = @user.id
          redirect to '/users/home'
         
        end
        redirect to '/sessions/login'
      
    end

    get '/sessions/logout' do
        session.clear
        redirect to '/'
    end
    
    get '/users/home' do
        @user = User.find(session[:user_id])
        erb :'/users/home'
    end
        
end