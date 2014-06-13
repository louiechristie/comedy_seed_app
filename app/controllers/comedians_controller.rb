class ComediansController < ApplicationController

  # load_and_authorize_resource
  
  def index
    #@comedians = Comedian.all
    @comedians = @q.result(:distinct => true)
  end

  def show
    @comedian = Comedian.find params[:id]
  end

  def edit
    @comedian = Comedian.find params[:id]
  end

  def update
    user = Comedian.find params[:id]
    user.update_attributes params[:user]
    redirect_to user
  end

  def destroy
    user = Comedian.find params[:id]
    user.delete
    redirect_to users_path 
  end

end

