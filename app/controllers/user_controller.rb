class UserController < ApplicationController
  before_filter :check_user

  def profile
    respond_to do |format|
      format.html
    end
  end

  def dashboard
    respond_to do |format|
      format.html
    end
  end

private

  def check_user
    if !current_user
      redirect_to landing_path, :flash => { :error => 'Please sign in to view this page' }
    else
      return
    end
  end

end