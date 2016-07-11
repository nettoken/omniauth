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

You'll need to register an app on Nettoken, you can do this here - https://www.nettoken.co.uk/developers/apps

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

## Auth Hash

Sample *Auth Hash* from `request.env['omniauth.auth']`:

```ruby
{
  "provider" => "nettoken",
  "uid" => 2,
  "info"=> {
    "email "=> "jwbradley87@gmail.com"
  },
  "credentials"=> {
    "token" => "fa703d7c5a205db6ef273bd8985bb29608c1123d956c7c273a2f3bbb37eb4bd6",
    "expires_at" => 1468263959,
    "expires"=>true
  },
  "extra"=> {}
}
```

## License

Copyright (c) 2016 Nettoken Limited

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
