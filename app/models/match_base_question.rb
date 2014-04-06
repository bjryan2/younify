class MatchBaseQuestion < ActiveRecord::Base
  has_many :users, :through => :match_base_question_responses
end
