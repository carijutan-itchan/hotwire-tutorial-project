class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :sign_up_params, only: [:create]

  # private

  # # Overriding the sign_up_params from devise controller
  # def sign_up_params
  #   params.require(:users).permit(:phone, :first_name, :last_name, :address, :email, :password)
  # end
end