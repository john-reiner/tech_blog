class UsersController < ApplicationController

    skip_before_action :logged_in, only: [:new, :create]

    def show
        @user = User.find(params[:id])
        
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)

        if @user.save 
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else 
            flash[:errors] = @user.errors.full_messages 
            redirect_to new_user_path
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(bio: params[:user][:bio])
        redirect_to user_path(@user)
    end


    private 

    def user_params 
        params.require(:user).permit(:username, :password, :password_confirmation, :profile_picture)
    end
end
