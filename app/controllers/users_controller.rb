# controls all interactions having to do with users, INCLUDING logging in and signing up
class UsersController < ApplicationController
    get '/register' do
        if session[:user_id].nil?
            erb :'users/register'
        else
            redirect to '/'
        end
    end
end