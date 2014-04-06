require 'linkedin'

class LinkedinImporter

  def initialize(attributes = {})
    super
  end

  def self.url
    @@url = LinkedinImporter.request_url
  end

  def self.get_connections(user)
    return self.url
  end

private
  def self.request_url
    client = LinkedIn::Client.new('75era6lidnw2rl', 'QL3I36ilvGiyGm2G')

    request_token = client.request_token()
    rtoken = request_token.token
    rsecret = request_token.secret

    @authenticated_response = {
                                                   rtoken: request_token.token,
                                                    rsecret: request_token.secret,
                                                    url: request_token.authorize_url
                                                  }

    @authenticated_response.to_hash
  end

end