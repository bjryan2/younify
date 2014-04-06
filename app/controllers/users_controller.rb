class UsersController < ApplicationController
  before_filter :authenticate_user!
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

end