class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :setup_search_object

  private
  def setup_search_object
    @q = User.search(params[:q])
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url , alert: "You can't access this page"
  end

end
