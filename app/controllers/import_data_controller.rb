class ImportDataController < ApplicationController
  before_filter :authenticate_user!

  def request
    respond_to do |format|
      format.html { redirect_to ImportedConnectionBase.request_data[:url] }
    end
  end

  def complete
    respond_to do |format|
    end
  end

end