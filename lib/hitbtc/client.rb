require 'faraday'
require 'base64'
require 'json'

module Hitbtc
  class Client
    HOST = 'https://api.hitbtc.com/api/2'

    attr_reader :key, :secret

    def initialize(attrs = {})
      @key    = attrs[:key]
      @secret = attrs[:secret]
    end

    def get(path, params = {}, headers = {})
      response = connection.get do |req|
        url = "#{HOST}/#{path}"
        req.params.merge!(params)
        req.url(url)
      end
      JSON.parse(response.body)
    end

    private
    
    def connection
      @connection ||= Faraday.new(:url => HOST) do |faraday|
        faraday.request  :url_encoded
        faraday.basic_auth(key, secret)
        faraday.adapter  Faraday.default_adapter
      end
    end
  end
end
