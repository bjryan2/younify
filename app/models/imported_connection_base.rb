class ImportedConnectionBase < ActiveRecord::Base
  belongs_to :user
  belongs_to :imported_connection_entry

  def self.request_data
    string = 'content'

    return string
  end
end
