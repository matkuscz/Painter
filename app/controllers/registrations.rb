class RegistrationsController < Devise::RegistrationsController
  #############################################################################################################################
  ############ Pořešit aby tohle fakalo jinak nemáme při registraci vytvořený jména a příjmení userů!!!!!!!!!!!!!!!############
  #############################################################################################################################
  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end