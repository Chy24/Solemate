class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
    private
  
    def user_not_authorized
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :username, :first_name, :last_name, :dob, :bio, :location, :rating, {images: []},:images_cache, :remove_images)}
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :current_password, :password, :username, :first_name, :last_name, :dob, :bio, :location, :rating, {images: []}, :images_cache, :remove_images)}
  end
end
