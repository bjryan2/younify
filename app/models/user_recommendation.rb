class UserRecommendation < ActiveRecord::Base
  belongs_to :recommender
  belongs_to :user
end
