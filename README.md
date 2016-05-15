# Nettoken OmniAuth Strategy

This gem provides a simple way to authenticate to Nettoken Web API using OmniAuth with OAuth2.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-nettoken'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-nettoken

## Usage

You'll need to register an app on Nettoken, you can do this here - https://www.nettoken.com/provider/applications

Usage of the gem is very similar to other OmniAuth strategies.
You'll need to add your app credentials to `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :nettoken, 'app_id', 'app_secret'
end
```

Or with Devise in `config/initializers/devise.rb`:

```ruby
config.omniauth :nettoken, 'app_id', 'app_secret'
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
