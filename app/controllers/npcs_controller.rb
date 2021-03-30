class NpcController < ApplicationController

    get '/npcs' do
        if logged_in?
            @user = current_user
            @npcs = Npc.all
        erb :'npcs/index'
        else
            redirect to '/'
        end
    end

    get '/npcs/new' do
        if logged_in?
        @user = current_user
        erb :'npcs/new'
        else 
            flash[:error] = "You must be logged in first."
            redirect to '/'
        end
    end

    post '/npcs' do
        @npc = Npc.create(params, user: current_user)
        @user = current_user
        redirect to '/npcs/#{@npc.id}'
    end

    get '/npcs/:id' do
        if logged_in?
            @npc = Npc.find_by_id(params[:id])
        erb :'npcs/show'
        else
            redirect to '/'
        end
    end

    get '/npcs/:id/edit' do
        if logged_in?
            @npc = Npc.find_by_id(param[:id])
        erb :'npcs/edit'
        else
            redirect to '/'
        end
    end

    patch '/npcs/:id' do

    end

    delete '/npcs/:id/delete' do
        @npc = current_user.npc.find_by(id: params[:id])
        if @npc && @npc.delete
            redirect to '/npcs'
        else
            redirect to 'npcs/#{@npc.id}'
        end
    end

end