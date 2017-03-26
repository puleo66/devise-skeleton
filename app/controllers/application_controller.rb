class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  alias_method :current_user, :current_member

  rescue_from Pundit::NotAuthorizedError, with: :member_not_authorized

  private

  	def member_not_authorized
  		flash[:alert] = "You are authorized to perform this action."

  		redirect to(request.referrer || root_path)
  		
  	end
  	
  protected

  	def configure_permitted_parameters
  	#	devise_parameter_sanitizer.for(:sign_up) << :name
  		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  	end
end
