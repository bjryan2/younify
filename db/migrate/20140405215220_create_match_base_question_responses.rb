class CreateMatchBaseQuestionResponses < ActiveRecord::Migration
  def change
    create_table :match_base_question_responses do |t|
      t.references :user
      t.references :match_base_question

      t.timestamps
    end
  end
end
