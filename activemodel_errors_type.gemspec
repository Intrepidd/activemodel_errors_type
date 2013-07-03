# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activemodel_errors_type/version'

Gem::Specification.new do |spec|
  spec.name          = "activemodel_errors_type"
  spec.version       = ActivemodelErrorsType::VERSION
  spec.authors       = ["Adrien Siami"]
  spec.email         = ["adrien.siami@dimelo.com"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", '~> 2.13.0'

  spec.add_runtime_dependency 'activemodel', '>= 3.0', '< 5.0'
end
