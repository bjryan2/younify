class MatchBaseQuestion < ActiveRecord::Base
  has_many :match_base_question_responses
  has_many :users, :through => :match_base_question_responses
end
