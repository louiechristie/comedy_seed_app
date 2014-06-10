class UsersController < ApplicationController
  
  def index
    @q = User.search(params[:q])
    @users = @q.result(:distinct => true)
  end

  def show
    @q = User.search(params[:q])
    @user = User.find params[:id]
  end

  def new
    @q = User.search(params[:q])
    @user = User.new
  end

  def create
    @user = User.create params[:user]
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @q = User.search(params[:q])  
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

