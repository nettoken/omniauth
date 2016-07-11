# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-nettoken/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-nettoken"
  gem.version       = Omniauth::Nettoken::VERSION
  gem.authors       = ["James Bradley"]
  gem.email         = ["root@jbrew.co.uk"]
  gem.description   = %q{OmniAuth strategy for Nettoken}
  gem.summary       = %q{OmniAuth strategy for Nettoken}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
end
