# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'textalytics/version'

Gem::Specification.new do |spec|
  spec.name          = "textalytics"
  spec.version       = Textalytics::VERSION
  spec.authors       = ["Gerardo Ortega"]
  spec.email         = ["geraldavid7@gmail.com"]
  spec.summary       = %q{Ruby wrapper the Textalytics API}
  spec.description   = %q{This gem pretends to make easier the process of text analysis through the Textalytics service}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rake', '~> 10.3.1'
	spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency 'rspec', '~> 2.14.1'
  spec.add_development_dependency 'httparty', '~> 0.12'
end


