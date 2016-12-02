# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'marskal_rdoc_example/version'

Gem::Specification.new do |spec|
  spec.name          = "marskal_rdoc_example"
  spec.version       = MarskalRdocExample::VERSION
  spec.authors       = ["Mike Urban"]
  spec.email         = ["mike@marskalgroup.com"]

  spec.summary       = %q{This App is a sample app to demonstrate RDoc markup syntax and provide standard ways of documenting code}
  spec.description   = %q{This is mean to be a living breathing gem and as technology changes and new standards are implemented, this should be maintained to stay in sync}
  spec.homepage      = "https://github.com/MarskalGroup/marskal_rdoc_example"
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

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
