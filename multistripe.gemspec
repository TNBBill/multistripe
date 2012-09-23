# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'multistripe/version'

Gem::Specification.new do |gem|
  gem.name          = "multistripe"
  gem.version       = Multistripe::VERSION
  gem.authors       = ["Bill Centinaro"]
  gem.email         = ["Bill@theresnobox.net"]
  gem.description   = %q{A Stripe API Client, to support multiple API Keys.}
  gem.summary       = %q{}
  gem.homepage      = "https://github.com/TNBBill/multistripe"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency('rest-client')
end
