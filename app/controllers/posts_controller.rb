class PostsController < ApplicationController
  def new
    @post=Post.new
  end
  
  def create
    @post = Post.new(post_params)
    # binding.pry
    @post.user_id = current_user.id
    @post.save
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
    # @user = @post.user
  end
  
  private
  
  def post_params
    params.require(:post).permit(:body)
  end
  
end
