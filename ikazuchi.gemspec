# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ikazuchi/version'
require 'ikazuchi/definition'

Gem::Specification.new do |spec|
  spec.name          = 'ikazuchi'
  spec.version       = Ikazuchi::VERSION
  spec.authors       = ['masarakki']
  spec.email         = ['masaki@hisme.net']
  spec.description   = 'meta-package of useful gems for rails development'
  spec.summary       = 'meta-package of useful gems for rails development'
  spec.homepage      = 'https://github.com/masarakki/ikazuchi'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'

  Ikazuchi::Definition.dependencies.each do |dependency|
    spec.add_dependency dependency.name, dependency.requirement.to_s
  end
end
