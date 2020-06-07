class ConsolesController < ApplicationController
    # console collection view
    get '/consoles' do
        # shows the user's current consoles
        if Helpers.is_logged_in?(session)
            @user = User.find(session[:user_id])
            erb :'consoles/users_consoles'
        else
            redirect to '/login'
        end
    end

    
    # new console creation
    get '/consoles/new' do
        if Helpers.is_logged_in?(session)
            @user = User.find(session[:user_id])
            erb :'consoles/new'
        else
            redirect to '/login'
        end
    end

    post '/consoles' do
        if params[:name].empty?
            redirect to '/consoles/new'
        else
            console = Console.new()
            console.name = params[:name]
            console.edition = params[:edition]
            console.brand = params[:brand]
            console.company = params[:company]
            console.user_id = session[:user_id]
        
            console.save
            redirect to '/consoles'
        end
    end

    '''
    # detailed game view
    get "/consoles/:id" do
        if Helpers.is_logged_in?(session)
            @user = User.find(session[:user_id])
            @game = Game.find(params[:id])
            erb :'games/game'
        else
            redirect to '/login'
        end
    end

    # edit game entry
    get "/consoles/:id/edit" do
        @game = Game.find(params[:id])
        if Helpers.is_logged_in?(session) && @game.user_id == session[:user_id]
            erb :'games/edit'
        else
            redirect to '/login'
        end
    end

    patch "/consoles/:id" do
        @game = Game.find(params[:id])

        @game.title = params[:title]
        @game.description = params[:description]
        @game.genre = params[:genre]
        @game.platform = params[:platform]
        @game.developer = params[:developer]
        @game.publisher = params[:publisher]

        @game.save

        redirect to "/games/#{params[:id]}"
    end

    # deleting game entires
    delete "/consoles/:id" do
        @game = Game.find(params[:id])
        if Helpers.is_logged_in?(session) && @game.user_id == session[:user_id]
            @game.delete
            redirect to '/games'
        else
            redirect to '/login'
        end
    end
    '''
end