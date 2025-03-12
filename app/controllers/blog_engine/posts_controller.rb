module BlogEngine
  class PostsController < ApplicationController
    
    def index
      @posts = BlogEngine::Post.all
    end

    def show
      @post = BlogEngine::Post.find(params[:id])
    end

    def new
      @post = BlogEngine::Post.new
    end

    def create
      @post = BlogEngine::Post.new(post_params)
      if @post.save
        redirect_to post_path(@post)
      else
        render :new
      end
    end

    private
    def post_params
      params.require(:post).permit(:title, :content)
    end
    
  end
end