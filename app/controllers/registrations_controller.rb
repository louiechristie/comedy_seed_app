class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    return '/users/'+current_user.id.to_s+'/edit'
  end
end