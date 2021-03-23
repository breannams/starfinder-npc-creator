class SignupLoginController < ApplicationController
   

    get '/registrations/signup' do
        erb :'/registrations/signup'
    end
    
    post '/registrations' do
        @user = User.new(email: params[:email], password: params[:password])
        @user.save
        session[:user_id] = @user.id
        if @user.save
            redirect to '/users/home'
        else 
            redirect to '/registrations/failure'
        end
    end

    get '/registrations/failure' do
        erb :'/registrations/failure'
    end

    get '/sessions/login' do
        erb :'sessions/login'
    end

    post '/sessions' do
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect to '/users/home'
        else
         redirect to '/sessions/failure'
        end
        
    end

    get '/sessions/failure' do
        erb :'/sessions/failure'
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