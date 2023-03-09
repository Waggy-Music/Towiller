class PostsController < ApplicationController
  def new
    @post=Post.new
  end
  
  def create
    @post=Post.new(post_param)#単数
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
  
  def post_param
    params.require(:post).permit(:body)
  end
  
end
