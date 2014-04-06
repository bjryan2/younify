class AddAnswertoMatchBaseQuestionResponse < ActiveRecord::Migration
  def change
    add_column :match_base_question_responses, :answer, :string
  end
end
