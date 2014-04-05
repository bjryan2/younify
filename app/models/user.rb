class User < ActiveRecord::Base

  has_many :imported_connection_bases
  has_many :imported_connections, :through => :imported_connection_bases

  has_many :match_base_question_responses
  has_many :match_base_questions, :through => :match_base_question_responses

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
end
