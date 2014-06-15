class ComediansController < ApplicationController
  
  load_and_authorize_resource

  def index
    @comedians = @q.result(:distinct => true)
    @comedians_with_ratings = @comedians.select { |comedian| !comedian.avg_rating.nan? } 
    @comedians_without_ratings = @comedians.select { |comedian| comedian.avg_rating.nan? } 
    @comedians = @comedians_with_ratings.sort_by!{|comedian| comedian.avg_rating}.reverse!
    @comedians = @comedians_with_ratings.concat @comedians_without_ratings
  end

  def show
    @comedian = Comedian.find params[:id]
    @rating = (current_user.rating.where(comedian_id: @comedian.id).first || Rating.new) if current_user
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

