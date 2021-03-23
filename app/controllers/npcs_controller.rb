class NpcController < ApplicationController

    get '/npcs' do
        erb :'npcs/index'
    end

    get '/npcs/new' do
        erb :'npcs/new'
    end

    post '/npcs' do

    end

    get '/npcs/:id' do
        erb :'npcs/show'
    end

    get '/npcs/:id/edit' do
        erb :'npcs/edit'
    end

    patch '/npcs/:id' do

    end

    delete '/npcs/:id/delete' do

    end

end