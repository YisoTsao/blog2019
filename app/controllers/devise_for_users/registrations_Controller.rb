class DeviseForUsers::RegistrationsController < Devise::RegistrationsController
   before_action :reg_sign_up_params, if: :devise_controller?

  private
 
  def reg_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:account,:name,:click_id,:phone,:agree_terms, :id_number,
    :birth_day, :country_code, :qq, :webchat])
    #add below that can edit user profile
    devise_parameter_sanitizer.permit(:account_update, keys: [:account,:name,:click_id,:phone,:agree_terms, :id_number,
    :birth_day, :country_code, :qq, :webchat])
  end
end