class ImportDataController < ApplicationController

  def request
    @authenticated_info = User.init_importer

    respond_to do |format|
      format.json render {:json => @authenticated_info}
    end
  end

  def complete
    respond_to do |format|
      format.html
    end
  end
end