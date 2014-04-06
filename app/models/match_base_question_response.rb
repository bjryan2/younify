class MatchBaseQuestionResponse < ActiveRecord::Base
  belongs_to :match_base_question
  belongs_to :user
end
