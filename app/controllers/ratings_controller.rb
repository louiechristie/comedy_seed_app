class RatingsController < ApplicationController

  load_and_authorize_resource

  def create

    @comedian = Comedian.find(params[:rating].fetch(:comedian_id))

    @rating = Rating.new(params[:rating]) 

    unless @rating.save
      flash[:alert] = "Could not make rating due to the following errors:" + @rating.errors.full_messages.to_sentence
    end
    
    redirect_to @comedian

  end

  def update
    @comedian = Comedian.find(params[:rating].fetch(:comedian_id))
    rating = Rating.find params[:id]

    unless rating.update_attributes params[:rating]
      flash[:alert] = "Could not make rating due to the following errors: " + rating.errors.full_messages.to_sentence
    end

    redirect_to @comedian
  end


end
