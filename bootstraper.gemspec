# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bootstraper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Zertico Team"]
  gem.email         = ["dev@zertico.com"]
  gem.description   = gem.summary
  gem.summary       = "Bootstrap a rack app based on some conventions"
  gem.homepage      = "http://github.com/zertico/bootstraper"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "bootstraper"
  gem.require_paths = ["lib"]
  gem.version       = Bootstraper::Version::STRING

  gem.required_ruby_version     = ">= 1.9.3"
  gem.required_rubygems_version = ">= 1.8.24"

  gem.add_dependency "thor", "~> 0.15.2"

  gem.add_development_dependency "rspec", "~> 2.10.0"
  gem.add_development_dependency "fuubar", "~> 1.0.0"
  gem.add_development_dependency "rake", "~> 0.9.2.2"

end
