class HomesController < ApplicationController
  def top
    @posts=Post.all
    @user=current_user
  end
end
