class CreateRecommenders < ActiveRecord::Migration
  def change
    create_table :recommenders do |t|
      t.references :user, index: true
      t.string :email

      t.timestamps
    end
  end
end
