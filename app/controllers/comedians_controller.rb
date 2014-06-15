class ComediansController < ApplicationController
  
  load_and_authorize_resource

  def index
    search_result = @q.result(:distinct => true)
    @comedians_with_ratings = search_result.select { |comedian| !comedian.avg_rating.nan? }.sort_by!{|comedian| comedian.avg_rating}.reverse!
    @comedians_without_ratings = search_result.select { |comedian| comedian.avg_rating.nan? } 
    @comedians = @comedians_with_ratings.concat @comedians_without_ratings
  end

  def newest
    @comedians = @q.result(:distinct => true).reverse!
    render(:action => 'newest')
  end

  def detailed
    # full_details is a scope that eager-loads all the associations
    respond_with Product.full_details
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

