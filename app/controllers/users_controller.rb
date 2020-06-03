# controls all interactions having to do with users, INCLUDING logging in and signing up
class UsersController < ApplicationController
    get '/register' do
        if session[:user_id].nil?
            erb :'users/register'
        else
            redirect to '/'
        end
    end

    post '/register' do
        if !(params[:username].empty? || params[:email].empty? || params[:password].empty?)
            @user = User.create(params[:username], params[:email], params[:password])
            session[:user_id] = @user.id
            redirect to '/'
        end
        
    end
end