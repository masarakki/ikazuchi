# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ikazuchi/version'
require 'ikazuchi/definition'

Gem::Specification.new do |spec|
  spec.name          = "ikazuchi"
  spec.version       = Ikazuchi::VERSION
  spec.authors       = ["masarakki"]
  spec.email         = ["masaki@hisme.net"]
  spec.description   = %q{meta-package of useful gems for rails development}
  spec.summary       = %q{meta-package of useful gems for rails development}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  Ikazuchi::Definition.dependencies.each do |dependency|
    spec.add_dependency dependency.name, dependency.requirement.to_s
  end
end
