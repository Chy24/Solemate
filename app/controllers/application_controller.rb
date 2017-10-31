class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :username, :first_name, :last_name, :dob, :bio, :location, :rating)}
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :current_password, :password, :username, :first_name, :last_name, :dob, :bio, :location, :rating)}
  end
end
