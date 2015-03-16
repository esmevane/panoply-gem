# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'panoply/version'

Gem::Specification.new do |gem|
  gem.name          = "panoply"
  gem.version       = Panoply::VERSION
  gem.authors       = ["Joseph McCormick"]
  gem.email         = ["esmevane@gmail.com"]
  gem.description   = %q{Scheduling and booking application}
  gem.summary       = %q{Scheduling and booking application}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rack-test", "0.6.2"
  gem.add_development_dependency "rspec", "3.0.0"
  gem.add_development_dependency "pry", "0.10.0"
  gem.add_development_dependency "simplecov", "0.8.2"
  gem.add_development_dependency "sqlite3", "1.3.9"

  gem.add_runtime_dependency "sequel", "4.12.0"
  gem.add_runtime_dependency "sinatra", "1.4.5"
  gem.add_runtime_dependency "haml", "4.0.5"
  gem.add_runtime_dependency "rake", "10.3.2"
  gem.add_runtime_dependency "thin", "1.6.2"
  gem.add_runtime_dependency "pg", "0.17.1"
end
