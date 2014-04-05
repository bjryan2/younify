class CreateImportedConnectionEntries < ActiveRecord::Migration
  def change
    create_table :imported_connection_entries do |t|
      t.string :first_name
      t.string :last_name
      t.string :image_url
      t.string :current_employer

      t.timestamps
    end
  end
end
