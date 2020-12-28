class SessionsController < ApplicationController

    skip_before_action :logged_in, only: [:new, :create]

    def create
        user = User.find_by(username: params[:session][:username])
        byebug
        user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        redirect_to user_path(user)
    end

    def destroy 
        session[:user_id] = nil 

        redirect_to new_login_path 
    end

end
