class ComediansController < ApplicationController
  
  load_and_authorize_resource

  def index
    @comedians = @q.result(:distinct => true)
  end

  def newest
    @comedians = @q.result(:distinct => true).sort_by!{|comedian| comedian.created_at }.reverse!
  end

  def top
    search_result = @q.result(:distinct => true)
    @comedians_with_ratings = search_result.select { |comedian| !comedian.avg_rating.nan? }.sort_by!{|comedian| comedian.avg_rating}.reverse!
    @comedians_without_ratings = search_result.select { |comedian| comedian.avg_rating.nan? }.reverse!
    @comedians = @comedians_with_ratings.concat @comedians_without_ratings
  end

  def show
    @comedian = Comedian.find params[:id]
    @rating = (current_user.ratings.where(comedian_id: @comedian.id).first || Rating.new) if current_user
    @review = Review.new if current_user
    @reviews = @comedian.reviews
  end

  def new
    @comedian = Comedian.new params[:id]
  end

  def edit
    @comedian = Comedian.find params[:id]
  end

  def update
    @comedian = Comedian.find params[:id]
    @comedian.update_attributes! params[:comedian]
    if params[:comedian][:image].present?
      render :crop
    else
      redirect_to @comedian, notice: "Profile updated."
    end
  end

  def destroy
    comedian = Comedian.find params[:id]
    comedian.delete
    redirect_to comedians_path 
  end

end

