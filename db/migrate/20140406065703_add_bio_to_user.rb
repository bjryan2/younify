class AddBioToUser < ActiveRecord::Migration
  def change
    add_column :users, :biography, :string
  end
end
