class CommentsController < ApplicationController

    
    def create
        @blog = Blog.find(params[:blog_id])
        @comment = @blog.comments.create(body: params[:comment][:body], user_id: @current_user.id, blog_id: params[:blog_id])

        redirect_to blog_path(@blog)
    end

end
