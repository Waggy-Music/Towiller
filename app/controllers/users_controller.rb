class UsersController < ApplicationController
  
  def show
    @user=User.find(params[:id])
  end
  
  private
  
  def user_params
   params.require(:user).pirmit(:email, :name, :phone_number, :date_of_birth )
  end
end
