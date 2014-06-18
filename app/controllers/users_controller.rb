class UsersController < ApplicationController

  load_and_authorize_resource

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id] 
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update_attributes params[:user]
    redirect_to edit_user_path(current_user)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    flash[:alert] = "User destroyed."
    redirect_to users_path
  end

end

