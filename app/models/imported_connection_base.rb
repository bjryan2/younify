class ImportedConnectionBase < ActiveRecord::Base
  belongs_to :user
  belongs_to :imported_connection_entry
end
