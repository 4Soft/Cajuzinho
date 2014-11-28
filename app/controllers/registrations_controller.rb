class RegistrationsController < Devise::RegistrationsController
	
	before_action :authenticate_user!
	
	private

	def sign_up_params
		params.require(:user).permit(:email, :password, 
			:password_confirmation, :skype, :facebook, :telephone, :address)
	end

	def account_update_params
		params.require(:user).permit(:email, :password, 
			:password_confirmation, :current_password, :skype, :facebook, :telephone, :address)
	end
end
