# controls all interactions having to do with users, INCLUDING logging in and signing up
class UsersController < ApplicationController
    # registration
    get '/register' do
        if Helpers.is_logged_in?(session)
            redirect to '/'
        else
            erb :'users/register'
        end
    end

    # TODO: make it so that you cannot create new users with identical info as previous users 
    #       (username and email fields only)
    post '/register' do
        # if a text box isn't filled out...
        if (params[:username].empty? || params[:email].empty? || params[:password].empty?)
            redirect to '/register'
        else # if all text boxes are filled in...
            @user = User.create(username: params[:username], email: params[:email], password: params[:password])
            session[:user_id] = @user.id
            redirect to '/'
        end
    end

    # logging in
    get '/login' do
        if Helpers.is_logged_in?(session)
            redirect to '/'
        end
    end

    # logging out
    get '/logout' do
        session.clear
        redirect to '/'
    end
end