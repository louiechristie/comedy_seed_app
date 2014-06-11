class UsersController < ApplicationController

  load_and_authorize_resource
  
  def index
    @users = @q.result(:distinct => true)
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
    redirect_to user
  end

  def destroy
    user = User.find params[:id]
    user.delete
    redirect_to users_path 
  end

end

