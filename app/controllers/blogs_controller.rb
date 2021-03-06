class BlogsController < ApplicationController

    skip_before_action :logged_in, only: [:index, :show]

    def index
        @first_blog = Blog.first
        @blogs = Blog.all.order('created_at DESC')[1..4]

    end

    def show
        @blog = Blog.find(params[:id])
    end

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.create!(name: params[:blog][:name], body: params[:blog][:body], user_id: @current_user.id, technology_topic_id: params[:blog][:technology_topic_id])

        if @blog.save 
            redirect_to @blog 
        else 
            render 'new'
        end
    end

    private

    def blog_params
        params.require(:blog).permit(:name, :body, :technology_topic_id)
    end
end