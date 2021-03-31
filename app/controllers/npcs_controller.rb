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
        @npc = Npc.find_by_id(param[:id])
        if logged_in? && current_user == @npc.user
        erb :'npcs/edit'
        else
            redirect to '/'
        end
    end

    patch '/npcs/:id' do
        @npc = Npc.find_by_id(params[:id]
        
        if logged_in?
            @npc.name = params[:name]
            @npc.cr_rating = params[:cr_rating]
            @npc.level = params[:level]
            @npc.exp = params[:exp]
            @npc.species = params[:species]
            @npc.class = params[:class]
            @npc.hp = params[:hp]
            @npc.eac = params[:eac]
            @npc.kac = params[:kac]
            @npc.fort_save = params[:fort_save]
            @npc.ref_save = params[:ref_save]
            @npc.will_save = params[:will_save]
            @npc.speed = params[:speed]
            @npc.master_skill = params[:]
            @npc.good_skill = params[:]
            # @npc.ability_mod1 = params[:]
            # @npc.ability_mod2 = params[:]
            # @npc.ability_mod3 = params[:]
            #@npc.offense_ability
            #@npc.defense_ability
            #@npc.immunity
            #@npc.melee
            #@npc.ranged
            @npc.special_abilities
            @npc.optional_info
            @npc.save
            redirect to '/npcs/#{@npc.id}'
        else
            redirect to '/'
    
     end

    delete '/npcs/:id/delete' do
        @npc = find_by_id(params[:id])
        
        redirect to '/npcs'
        
    end

end