class ApplicationController < ActionController::Base
  before_filter :update_sanitized_params, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def update_sanitized_params
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:email, :password, :password_confirmation, :biography, :resume, :avatar)
    end
  end

end
