class RegistrationsController < Devise::RegistrationsController
	
	private

	def sign_up_params
		params.require(:user).permit(:username, :email, :password, 
			:password_confirmation, :skype, :facebook, :telephone, :address)
	end

	def account_update_params
		params.require(:user).permit(:username, :email, :password, 
			:password_confirmation, :current_password, :skype, :facebook, :telephone, :address)
	end
end
