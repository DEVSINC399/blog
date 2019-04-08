class PostsController < ApplicationController
    def index
        @posts = Post.all.order("created_at desc")
    end

    def new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    private
        def post_params
            params.require(:post).permit(:title, :body)
        end

end