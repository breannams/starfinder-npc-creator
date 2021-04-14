class NpcController < ApplicationController

    get '/npcs' do
        if logged_in?
            @npcs = current_user.npcs.all

        erb :'npcs/index'
        else
            flash[:error] = "You must be logged in first."
            redirect to '/'
        end
    end

    get '/npcs/new' do
        if logged_in?
        erb :'npcs/new'
        else 
            flash[:error] = "You must be logged in to create an NPC."
            redirect to '/'
        end
    end

    post '/npcs' do
        @npc = current_user.npcs.create(params[:npcs])
        
        if @npc.save
  
        redirect to "/npcs/#{@npc.id}"
        else
            redirect to '/npcs/new'
        end
        
    end
  
    get '/npcs/:id' do
        @npc = Npc.find_by_id(params[:id])

        if !logged_in?
            flash[:error] = "You must be logged in first"
                 redirect to '/sessions/login'
        elsif !@npc
            flash[:error] = "This NPC does not exist."
            redirect to '/users/home'

        elsif @npc.user != current_user
            flash[:error] = "You do not have access to view this NPC."
                redirect to '/users/home'

        else
                erb :'npcs/show'
        end
    end

    get '/npcs/:id/edit' do
        @npc = Npc.find_by_id(params[:id])
        if @npc && @npc.user == current_user && logged_in?
       
        erb :'npcs/edit'
        else
            flash[:error] = "You must be logged in first."
            redirect to '/'
        end
    end

    patch '/npcs/:id' do
        @npc = Npc.find_by_id(params[:id])

        if @npc && @npc.update(params[:npcs]) 
            redirect to "/npcs/#{@npc.id}"
        else
            redirect to "/npcs/#{@npc.id}/edit"
        end
     end

    delete '/npcs/:id' do
       @npc = Npc.find_by_id(params[:id])
        if @npc.user == current_user
       @npc.delete
        end
        redirect to '/npcs'
    end

end