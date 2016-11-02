# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'layer6_client/version'

Gem::Specification.new do |spec|
  spec.name          = "layer6_client"
  spec.version       = Layer6Client::VERSION
  spec.authors       = ["Anthony Clark"]
  spec.email         = ["anthony.clark@shopify.com"]

  spec.summary       = 'Ruby bindings for the Layer6 api'
  spec.homepage      = "https://github.com/AnthonyClark/layer6_client"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
