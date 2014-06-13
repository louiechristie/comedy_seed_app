class RatingsController < ApplicationController

  def create

    @comedian = Comedian.find(params[:rating].fetch(:comedian_id))

    @rating = current_user.rating.where(comedian_id: @comedian.id).first

    @rating ? @rating.rating = params[:rating].fetch(:rating) : @rating = Rating.new(params[:rating]) 


    unless @rating.save
      flash[:notice] = "Could not make rating due to the following errors:" + @rating.errors.full_messages.to_sentence
    end
    
    redirect_to @comedian

  end

end
