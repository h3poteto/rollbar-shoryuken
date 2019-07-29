# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rollbar/shoryuken/version'

Gem::Specification.new do |spec|
  spec.name          = "rollbar-shoryuken"
  spec.version       = Rollbar::Shoryuken::VERSION
  spec.authors       = ["h3poteto"]
  spec.email         = ["h3.poteto@gmail.com"]

  spec.summary       = %q{rollbar's plugin for shoryuken.}
  spec.description   = %q{rollbar's plugin for shoryuken.}
  spec.homepage      = "https://github.com/h3poteto/rollbar-shoryuken"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'shoryuken', '>= 4.0', '<= 5.1'
  spec.add_runtime_dependency 'rollbar', '~> 2.21', '<= 3.0'
  spec.add_runtime_dependency 'aws-sdk-sqs', '~> 1.20', '<= 2.0'

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
