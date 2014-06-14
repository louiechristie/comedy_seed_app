class RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_up_path_for(resource)
    if current_user.is_comedian?
       return edit_comedian_path(current_user.comedian)
    else
       return root_path
    end
  end
end