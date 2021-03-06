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

    
    # detailed console view
    get "/consoles/:id" do
        if Helpers.is_logged_in?(session)
            @user = User.find(session[:user_id])
            @console = Console.find(params[:id])
            erb :'consoles/console'
        else
            redirect to '/login'
        end
    end

    
    # edit console
    get "/consoles/:id/edit" do
        @console = Console.find(params[:id])
        if Helpers.is_logged_in?(session) && @console.user_id == session[:user_id]
            erb :'consoles/edit'
        else
            redirect to '/login'
        end
    end

    patch "/consoles/:id" do
        @console = Console.find(params[:id])

        @console.name = params[:name]
        @console.edition = params[:edition]
        @console.brand = params[:brand]
        @console.company = params[:company]
        
        #binding.pry

        @console.save

        redirect to "/consoles/#{params[:id]}"
    end

    # deleting game entires
    delete "/consoles/:id" do
        @console = Console.find(params[:id])
        if Helpers.is_logged_in?(session) && @console.user_id == session[:user_id]
            @console.destroy
            redirect to '/consoles'
        else
            redirect to '/login'
        end
    end
    
end