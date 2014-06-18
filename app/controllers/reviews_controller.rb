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

  def inappropriate
    @review = Review.find(params[:id])
    current_user.flag(@review, :inappropriate)
    redirect_to :back, alert: "You have reported this review as inappropriate."
  end

  def delete_inappropriate
    @review = Review.find(params[:id])
    @review.flaggings.destroy_all
    redirect_to admin_index_path, notice: "You have removed the flag."
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
