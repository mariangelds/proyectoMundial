class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_ability
  	@current_ability ||= Ability.new(current_user)
  end

  #rescue_from CanCan::AccesDenied do |exception|
  #	redirect_to_root_url, :alert => exception.message 
  #end

end
