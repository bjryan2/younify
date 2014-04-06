class UsersController < ApplicationController
  before_filter :check_user
  layout "users"

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
      redirect_to landing_index_path, :flash => { :error => 'Please sign in to view this page' }
    else
      return
    end
  end

end