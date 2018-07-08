require "hitbtc/version"

module Hitbtc
  autoload :Helpers,         'hitbtc/helpers'
  # autoload :Market,        'bittrex/market'
  autoload :Client,          'hitbtc/client'
  autoload :Configuration,   'hitbtc/configuration'
  # autoload :Deposit,       'bittrex/deposit'
  # autoload :Order,         'bittrex/order'
  # autoload :Quote,         'bittrex/quote'
  # autoload :Summary,       'bittrex/summary'
  # autoload :Wallet,        'bittrex/wallet'
  # autoload :Withdrawal,    'bittrex/withdrawal'
  autoload :History,         'hitbtc/history'
  autoload :Account,         'hitbtc/account'

  def self.client
    @client ||= Client.new(configuration.auth)
  end

  def self.config
    yield configuration
    @client = Client.new(configuration.auth)
  end

  def self.configuration
    Configuration.instance
  end

  def self.root
    File.expand_path('../..', __FILE__)
  end
end
