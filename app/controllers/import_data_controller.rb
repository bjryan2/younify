class ImportDataController < ApplicationController
  before_filter :authenticate_user!

  def request
    @authenticated_info = ImportedConnectionBase.request_data

    puts(@authenticated_info)

    respond_to do |format|
      format.html
    end
  end

  def complete
    respond_to do |format|
      format.html
    end
  end

end