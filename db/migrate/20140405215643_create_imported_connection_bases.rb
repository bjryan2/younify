class CreateImportedConnectionBases < ActiveRecord::Migration
  def change
    create_table :imported_connection_bases do |t|
      t.references :user
      t.references :imported_connection_entry

      t.timestamps
    end
  end
end
