class DeviseForUsers::RegistrationsController < Devise::RegistrationsController
 	
  
  private
 
  def reg_sign_up_params
    params.require(:users).permit(:account,:name,:click_id,:phone,:agree_terms, :id_number,
    :birth_day, :country_code, :qq, :webchat)
  end
 
end



