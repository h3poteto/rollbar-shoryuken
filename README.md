# Rollbar::Shoryuken
[![Test](https://github.com/h3poteto/rollbar-shoryuken/actions/workflows/test.yml/badge.svg?branch=master)](https://github.com/h3poteto/rollbar-shoryuken/actions/workflows/test.yml)
[![GitHub release](https://img.shields.io/github/release/h3poteto/rollbar-shoryuken)](https://github.com/h3poteto/rollbar-shoryuken/releases)
[![Gem](https://img.shields.io/gem/v/rollbar-shoryuken)](https://rubygems.org/gems/rollbar-shoryuken)
![Gem](https://img.shields.io/gem/dt/rollbar-shoryuken)


This Ruby gem is an extension of the [rollbar](https://github.com/rollbar/rollbar-gem) gem, and provides a set of notifiers for sending notifications when errors occur in [Shoryuken](https://github.com/phstc/shoryuken) worker. It is useful when you use rollbar and shoryuken in Rails.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rollbar-shoryuken'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rollbar-shoryuken

## Usage

Add require in your initializer like config/initializers/rollbar.rb:

```ruby
require 'rollbar/shoryuken'

Rollbar.configure do |config|
  # setup some notification
end
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/h3poteto/rollbar-shoryuken. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

