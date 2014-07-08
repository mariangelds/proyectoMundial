class RegistrationsController <Devise::RegistrationsController
	before_filter :configure_permitted_parameters, if::devise_controller?

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) do |u|
			u.permit(:email, :password, :password_confirmation, :rol)
		end

		devise_parameter_sanitizer.for(:account_update)do |u|
			u.permit(:email, :password, :password_confirmation, :current_password,:rol)
		end

		devise_parameter_sanitizer.for(:sign_in)do |u|
			u.permit(:email, :password, :current_password, :rol)
		end
	end

end