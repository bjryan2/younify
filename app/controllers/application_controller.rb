class ApplicationController < ActionController::Base
  before_filter :update_sanitized_params, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def update_sanitized_params
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:email, :password, :password_confirmation, :biography, :resume)
    end
  end

  def authenticate!
    if current_user
      return
    else
      redirect_to landing_index_path, :flash => { :error => 'Please sign in to view this page' }
    end
  end

end
