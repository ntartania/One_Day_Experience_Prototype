# The Professionals Controller is responsible for creating new professional users
class ProfessionalsController < Devise::RegistrationsController

  def create
    build_resource(registration_params)
    if resource.save
      sign_up_status(resource)
    else
      clean_up_passwords
      respond_with resource
    end
  end  

  private

  def registration_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

  def sign_up_status(resource)
    if resource.active_for_authentication?
      set_flash_message :notice, :signed_up if is_navigational_format?
      sign_up(resource_name, resource)
    else
      set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
    end
    respond_with resource, :location => after_sign_up_path_for(resource)
  end

end