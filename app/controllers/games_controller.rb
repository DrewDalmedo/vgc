class GamesController < ApplicationController
    # game collection view
    get '/games' do
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
        game = Game.new()
        game.title = params[:title]
        game.description = params[:description]
        game.genre = params[:genre]
        game.platform = params[:platform]
        game.developer = params[:developer]
        game.publisher = params[:publisher]
        game.user_id = session[:user_id]
        
        game.save
        redirect to '/games'
    end

    # detailed game view
    get "/games/:id" do
        if Helpers.is_logged_in?(session)
            @user = User.find(session[:user_id])
            @game = Game.find(params[:id])
            erb :'games/game.erb'
        else
            redirect to '/login'
        end
    end
end