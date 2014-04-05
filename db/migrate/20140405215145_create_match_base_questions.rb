class CreateMatchBaseQuestions < ActiveRecord::Migration
  def change
    create_table :match_base_questions do |t|
      t.string :question

      t.timestamps
    end
  end
end
