class SessionsController < ApplicationController

    def new

    end

    def create
        user = User.find_by(username: params[:session][:username])
        user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        redirect_to user_path(user)
    end

    def destroy 
        session[:user_id] = nil 

        redirect_to root_path 
    end

end