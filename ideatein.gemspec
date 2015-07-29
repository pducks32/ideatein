# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ideatein/version'

Gem::Specification.new do |spec|
  spec.name          = "ideatein"
  spec.version       = Ideatein::VERSION
  spec.authors       = ["Patrick Metcalfe"]
  spec.email         = ["git@patrickmetcalfe.com"]

  spec.summary       = %q{Gem for interfacing with My Ideal Protein}
  spec.description   = %q{This gem helps interface with My Ideal Protein's web app. Though they do not have a public api they do allow json formats on their clearly rails-like app.}
  spec.homepage      = "https://github.com/pducks32/ideatein"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3"
  spec.add_development_dependency "pry", "~> 0.10"
end
