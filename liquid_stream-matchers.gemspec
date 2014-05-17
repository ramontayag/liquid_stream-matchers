# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'liquid_stream/matchers/version'

Gem::Specification.new do |spec|
  spec.name          = "liquid_stream-matchers"
  spec.version       = LiquidStream::Matchers::VERSION
  spec.authors       = ["Ramon Tayag"]
  spec.email         = ["ramon.tayag@gmail.com"]
  spec.description   = %q{Provides shoulda style matchers for liquid_stream}
  spec.summary       = %q{Provides shoulda style matchers for liquid_stream}
  spec.homepage      = "https://github.com/ramontayag/liquid_stream-matchers"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency "liquid_stream"
end
