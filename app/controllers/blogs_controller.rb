class BlogsController < ApplicationController

    def index
        @blogs = Blog.all
    end

    def show
        @blog = Blog.find(params[:id])
        @comments = @blog.comments 
    end

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.new(blog_params)

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