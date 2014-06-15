class ComediansController < ApplicationController
  
  load_and_authorize_resource

  def index
    @comedians = @q.result(:distinct => true)
  end

  def show
    @comedian = Comedian.find params[:id]
    @rating = current_user.rating.where(comedian_id: @comedian.id).first || Rating.new if current_user
  end

  def edit
    @comedian = Comedian.find params[:id]
  end

  def update
    comedian = Comedian.find params[:id]
    comedian.update_attributes params[:comedian]
    redirect_to comedian
  end

  def destroy
    comedian = Comedian.find params[:id]
    comedian.delete
    redirect_to comedians_path 
  end

end

