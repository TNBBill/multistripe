module Stripe
  module Customer 
    #POST https://api.stripe.com/v1/customers
    def self.create(data, apiKey)
      url = "https://#{apiKey}:@api.stripe.com/v1/customers"
      json =  RestClient.post url, data, :content_type=> :json, :accept => :json
      return JSON.parse(json)
    end

    def self.retrieve(id, apiKey)
      url = "https://#{apiKey}:@api.stripe.com/v1/customers/#{id}"
      json =  RestClient.get url, :accept => :json
      return JSON.parse(json)
    end

    def self.update(data, id, apiKey)
      url = "https://#{apiKey}:@api.stripe.com/v1/customers/#{id}"
      json =  RestClient.post url, data, :content_type=> :json, :accept => :json
      return JSON.parse(json)
    end

    def self.subscription(data, id, apiKey)
      url = "https://#{apiKey}:@api.stripe.com/v1/customers/#{id}/subscription"
      json =  RestClient.post url, data, :content_type=> :json, :accept => :json
      return JSON.parse(json)
    end
  end
end