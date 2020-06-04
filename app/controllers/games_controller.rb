class GamesController < ApplicationController
    get '/games' do
        # shows the user's current games
        if Helpers.is_logged_in?(session)
            @user = User.find(session[:user_id])
            erb :'games/users_games.erb'
        else
            redirect to '/login'
        end
    end
end