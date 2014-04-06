class ImportedConnectionEntry < ActiveRecord::Base
  has_many :imported_connection_bases
  has_many :users, :through => :imported_connection_base
end
