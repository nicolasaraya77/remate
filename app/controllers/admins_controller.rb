class AdminsController < ApplicationController
    skip_authorization_check

  def index
    @users = User.all
  end

  def update_role
     @user = User.find(params[:user_id])
     @user.update(role: params[:role_id].to_i)
    redirect_to admins_index_path
    #raise params[:role_id].inspect
  end





end
