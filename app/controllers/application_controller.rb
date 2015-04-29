class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # FORCES USER TO SIGN UP WITH SITE BEFORE ANYTHING

  before_filter :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?

  
protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:firstName, :lastName, :profileName, :email, :password,
    :password_confirmation, :remember_me, :avatar, :avatar_cache) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :profileName, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:firstName, :lastName, :profileName, :email, :password,
    :password_confirmation, :current_password, :avatar, :avatar_cache) }
  end
end