class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    new_my_profile_path
  end

  def after_inactive_sign_up_path_for(resource)
    new_my_profile_path
  end

end