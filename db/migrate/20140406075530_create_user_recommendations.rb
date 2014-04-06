class CreateUserRecommendations < ActiveRecord::Migration
  def change
    create_table :user_recommendations do |t|
      t.string :content
      t.boolean :positive_rec
      t.references :recommender, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
