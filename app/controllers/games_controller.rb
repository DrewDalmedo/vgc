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
end