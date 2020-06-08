class GamesController < ApplicationController
    # game collection view
    get '/games' do
        #binding.pry
        # shows the user's current games
        if Helpers.is_logged_in?(session)
            @user = User.find(session[:user_id])
            erb :'games/users_games'
        else
            redirect to '/login'
        end
    end

    # new game creation
    get '/games/new' do
        if Helpers.is_logged_in?(session)
            @user = User.find(session[:user_id])
            erb :'games/new'
        else
            redirect to '/login'
        end
    end

    post '/games' do
        if params[:title].empty?
            redirect to '/games/new'
        else
            game = Game.new()
            game.title = params[:title]
            game.description = params[:description]
            game.genre = params[:genre]
            #game.platform = params[:platform]
            game.developer = params[:developer]
            game.publisher = params[:publisher]
            game.user_id = session[:user_id]
            game.console = Console.find(params[:console].to_i) if !params[:console].nil?

            #binding.pry
        
            game.save
            redirect to '/games'
        end
    end

    # detailed game view
    get "/games/:id" do
        if Helpers.is_logged_in?(session)
            @user = User.find(session[:user_id])
            @game = Game.find(params[:id])
            erb :'games/game'
        else
            redirect to '/login'
        end
    end

    # edit game entry
    get "/games/:id/edit" do
        @user = User.find(session[:user_id])
        @game = Game.find(params[:id])
        if Helpers.is_logged_in?(session) && @game.user_id == session[:user_id]
            erb :'games/edit'
        else
            redirect to '/login'
        end
    end

    patch "/games/:id" do
        @game = Game.find(params[:id])

        @game.title = params[:title]
        @game.description = params[:description]
        @game.genre = params[:genre]
        #@game.platform = params[:platform]
        @game.developer = params[:developer]
        @game.publisher = params[:publisher]
        @game.console = Console.find(params[:console].to_i) if !params[:console].nil?
        #binding.pry

        @game.save

        redirect to "/games/#{params[:id]}"
    end

    # deleting game entires
    delete "/games/:id" do
        @game = Game.find(params[:id])
        if Helpers.is_logged_in?(session) && @game.user_id == session[:user_id]
            @game.destroy
            redirect to '/games'
        else
            redirect to '/login'
        end
    end
end