class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :setup_search_object


  private
  def setup_search_object
    @q = User.search(params[:q])
  end

end
