class NpcController < ApplicationController

    get '/npcs' do
        if logged_in? && current_user
            
            @npcs = Npc.all
        erb :'npcs/index'
        else
            redirect to '/'
        end
    end

    get '/npcs/new' do
        if logged_in? && current_user
        erb :'npcs/new'
        else 
            flash[:error] = "You must be logged in first."
            redirect to '/'
        end
    end

    post '/npcs' do
        @npc = Npc.create(params[:npcs])
        redirect to '/npcs/#{@npc.id}'
    end

    get '/npcs/:id' do
        if logged_in? && current_user
            @npc = Npc.find_by_id(params[:id])
        erb :'npcs/show'
        else
            redirect to '/'
        end
    end

    get '/npcs/:id/edit' do
        @npc = Npc.find_by_id(params[:id])
        if logged_in? && current_user
        erb :'npcs/edit'
        else
            redirect to '/'
        end
    end

    patch '/npcs/:id' do
        @npc = Npc.find_by_id(params[:id])
        
        
            @npc.name = params[:name]
            @npc.cr_rating = params[:cr_rating]
            @npc.level = params[:level]
            @npc.exp = params[:exp]
            @npc.species = params[:species]
            @npc.npc_class = params[:npc_class]
            @npc.hp = params[:hp]
            @npc.eac = params[:eac]
            @npc.kac = params[:kac]
            @npc.fort_save = params[:fort_save]
            @npc.ref_save = params[:ref_save]
            @npc.will_save = params[:will_save]
            @npc.speed = params[:speed]
            @npc.master_skill = params[:master_skill]
            @npc.good_skill = params[:good_skill]
            @npc.ability_mod1 = params[:ability_mod1]
            @npc.ability_mod2 = params[:ability_mod1]
            @npc.ability_mod3 = params[:ability_mod1]
            @npc.offense_ability = params[:offense_ability]
            @npc.defense_ability = params[:defense_ability]
            @npc.immunities = params[:immunities]
            @npc.melee = params[:melee]
            @npc.ranged = params[:ranged]
            @npc.special_ability = params[:special_ability]
            @npc.optional_info = params[:optional_info]
            
            @npc.save
            redirect to "/npcs/#{@npc.id}"
     end

    delete '/npcs/:id' do
       @npc = Npc.find_by_id(params[:id])
       @npc.delete
        redirect to '/npcs'
    end

end