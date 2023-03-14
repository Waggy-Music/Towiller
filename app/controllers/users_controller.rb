class UsersController < ApplicationController
  before_action :is_matching_login_user,only: [:edit, :update]
  
  def show
    @user=User.find(params[:id])
  end
  
  private
  
  def user_params
   params.require(:user).pirmit(:email, :name, :phone_number, :date_of_birth )
  end
  
  def is_matching_login_user
  user_id = params[:id].to_i
  login_user_id = current_user.id
  if(user_id!= login_user_id)
    redirect_to user_path(current_user)
  end
  
  end
end
