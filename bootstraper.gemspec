# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bootstraper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Felipe Knappe"]
  gem.email         = ["fknappe@gmail.com"]
  gem.description   = gem.summary
  gem.summary       = "Bootstraper consists in a collection of custom Thor generators for ruby applications"
  gem.homepage      = "http://github.com/fknappe/bootstraper"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "bootstraper"
  gem.require_paths = ["lib"]
  gem.version       = Bootstraper::Version::STRING

  gem.required_ruby_version     = ">= 1.9.3"
  gem.required_rubygems_version = ">= 1.8.24"

  gem.add_development_dependency "rspec", "~> 2.11.0"
  gem.add_development_dependency "rake", "~> 0.9.2.2"

  gem.add_runtime_dependency "thor"
end
