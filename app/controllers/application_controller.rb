class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  include ApplicationHelper

  def after_sign_in_path_for(user)
    workshop_landing_page_for(user)
  end

  def current_workshop
    current_user.workshop
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :full_name, :biography, :picture_url, :run_workshop_explaination, :organiser, :displayed_email, :displayed_twitter, :displayed_github])
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:full_name, :biography, :picture_url, :run_workshop_explaination, :displayed_email, :displayed_twitter, :displayed_github])
  end

end
