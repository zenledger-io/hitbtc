require 'time'

module Hitbtc
  class History
    include Helpers

    attr_reader :name, :currency, :base, :currency_name, :base_name, :minimum_trade, :active, :created_at, :raw

    def initialize(attrs = {})
    #   @name = attrs['MarketName']
    #   @currency = attrs['MarketCurrency']
    #   @base = attrs['BaseCurrency']
    #   @currency_name = attrs['MarketCurrencyLong']
    #   @base_name = attrs['BaseCurrencyLong']
    #   @minimum_trade = attrs['MinTradeSize']
    #   @active = attrs['IsActive']
    #   @created_at = extract_timestamp(attrs['Created'])
    #   @raw = attrs
    end

    def self.trades
      client.get('history/trades').map{|data| new(data) }
    end

    def self.order
        client.get('history/order').map{|data| new(data) }
    end

    private

    def self.client
      @client ||= Hitbtc.client
    end
  end
end
