class PassthroughController < ApplicationController
  def authenticate
    if !current_user
      redirect_to landing_index_path
    else
      redirect_to home_index_path
    end
  end
end
