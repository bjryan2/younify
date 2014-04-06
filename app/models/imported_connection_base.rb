class ImportedConnectionBase < ActiveRecord::Base
  belongs_to :user
  belongs_to :imported_connection_entry

  def self.request_data
    require 'linkedin'

    client = LinkedIn::Client.new('75era6lidnw2rl', 'QL3I36ilvGiyGm2G')

    request_token = client.request_token()
    rtoken = request_token.token
    rsecret = request_token.secret

    @authenticated_response = {
                                                   rtoken: request_token.token,
                                                    rsecret: request_token.secret,
                                                    url: request_token.authorize_url
                                                  }

    return @authenticated_response.to_hash
  end
end
