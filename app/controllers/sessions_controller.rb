class SessionsController < ApplicationController

    skip_before_action :logged_in, only: [:new, :create]

    def create
        
        user = User.find_by(username: params[:session][:username])

        if user != nil && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:notice] = "Username or Password does not match."
            redirect_to new_login_path
        end 
        # byebug

    end

    def destroy 
        session[:user_id] = nil 

        redirect_to new_login_path 
    end

end