# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bootstraper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Felipe Knappe"]
  gem.email         = ["fknappe@zertico.com"]
  gem.description   = gem.summary
  gem.summary       = "Bootstrap a rack app based on some conventions"
  gem.homepage      = "http://github.com/zertico/bootstraper"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "bootstraper"
  gem.require_paths = ["lib"]
  gem.version       = Bootstraper::Version::STRING
end
