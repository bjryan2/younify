class PassthroughController < ApplicationController
  def authenticate
    if !current_user
      redirect_to landing_index_path
    else
      redirect_to user_dashboard_path(current_user)
    end
  end
end
