class AddImportStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :imported_linkedin, :boolean
  end
end
