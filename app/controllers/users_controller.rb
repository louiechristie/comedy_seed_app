class UsersController < ApplicationController

  # load_and_authorize_resource

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update_attributes params[:user]
    redirect_to edit_user_path(current_user)
  end

end

