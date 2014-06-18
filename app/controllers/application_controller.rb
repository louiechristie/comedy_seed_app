class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :setup_search_object

  private
  def setup_search_object
    @q = Comedian.search(params[:q])
  end

  rescue_from CanCan::AccessDenied do |exception|
    if !current_user
      flash[:alert] = "You must be logged in to do that."
    else
      flash[:alert] = exception.to_s
    end
    redirect_to root_url
  end

  def after_sign_in_path_for(resource)
    newest_comedians_path
  end

end
