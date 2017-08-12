# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inheritance/version'

Gem::Specification.new do |spec|
  spec.name          = "inheritance"
  spec.version       = Inheritance::VERSION
  spec.authors       = ["Thom Bruce"]
  spec.email         = ["thom@thombruce.com"]

  spec.summary       = %q{Adds inheritance logic for Rails ActiveRecord.}
  spec.description   = %q{Adds several different inheritance patterns for use with Rails models and ActiveRecord relations.}
  spec.homepage      = "http://github.com/thombruce/inheritance"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.required_ruby_version = ">= 2.4"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "coveralls", "~> 0.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3"
  spec.add_development_dependency "rubocop", "~> 0.49.1"
  
  spec.add_dependency "activesupport", ">= 5.1"
  spec.add_dependency "activerecord", ">= 5.1"
end
