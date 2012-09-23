module Stripe
  module Plan 
    #POST https://api.stripe.com/v1/plans
    def self.create(options, apiKey)
      url = "https://#{apiKey}:@api.stripe.com/v1/plans"
      json =  RestClient.post url, options, :content_type=> :json, :accept => :json
      return json
    end
  end
end