class ReviewsController < ApplicationController

  load_and_authorize_resource

  def create

    @comedian = Comedian.find(params[:review].fetch(:comedian_id))

    @review = Review.new(params[:review]) 

    unless @review.save
      flash[:alert] = "Could not make rating due to the following errors:" + @review.errors.full_messages.to_sentence
    end
    
    redirect_to @comedian

  end

  def update
    @comedian = Comedian.find(params[:review].fetch(:comedian_id))
    rating = Review.find params[:id]

    unless rating.update_attributes params[:review]
      flash[:alert] = "Could not make rating due to the following errors:" + @review.errors.full_messages.to_sentence
    end

    redirect_to @comedian
  end


end
