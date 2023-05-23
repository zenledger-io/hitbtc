# Hitbtc

Unofficial gem for the HitBtc API

## Installation

Add this line to your application's Gemfile:

    gem 'hitbtc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hitbtc

## Usage

    require 'hitbtc'
    client = Hitbtc::Client.new(key: <key>, secret: <secret>)
    client.get('account/transaction', { offset: <offset>, limit: <LIMIT> })

## Contributing

1. Fork it ( https://github.com/[my-github-username]/hitbtc/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
