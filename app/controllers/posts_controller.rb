class PostsController < ApplicationController
  def new
  end
  
  def create
    @post=Post.new(post_params)
    @post.save
    redirect_to post_path(@post.id)
  end

  def show
  end

  def index
  end
end
