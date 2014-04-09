class User < ActiveRecord::Base

  has_many :imported_connection_bases
  has_many :imported_connections, :through => :imported_connection_bases

  has_many :match_base_question_responses
  has_many :match_base_questions, :through => :match_base_question_responses

  has_attached_file :resume

  validates_attachment :resume, content_type: { content_type: ["application/pdf", "application/doc", "application/docx", "text/plain"] }


  # Include default devise modules. Others available are:
  # :lockable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:linkedin, :facebook]

  def self.new_with_session(params, session)
    super.tap do |user|
      if ((data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]) || (data = session["devise.linkedin_data"] && session["devise.linkedin_data"]["extra"]["raw_info"]))
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.find_for_facebook_oauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.first_name = auth.info.first_name   # assuming the user model has a name
        user.last_name = auth.info.last_name   # assuming the user model has a name
        user.image_url = auth.info.image # assuming the user model has an image
    end
  end

  def self.find_for_linkedin_oauth(auth)

    where(auth.slice(:provider, :uid)).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.first_name = auth.info.first_name   # assuming the user model has a name
        user.last_name = auth.info.last_name   # assuming the user model has a name
        user.image_url = auth.info.image # assuming the user model has an image
    end
  end

end
