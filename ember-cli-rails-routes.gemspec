# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ember-cli/routes/version'

Gem::Specification.new do |spec|
  spec.name          = "ember-cli-rails-routes"
  spec.version       = EmberCLI::Routes::VERSION
  spec.authors       = ["Chase McCarthy", "Jonathan Jackson"]
  spec.email         = ["chase@code0100fun.com", "jonathan.jackson1@me.com"]
  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "railties", ">= 3.1", "< 5"
  spec.add_dependency "sprockets", ">= 2.0"
  spec.add_dependency "ember-cli-rails-deploy-redis", "~> 0.0.1"
end
