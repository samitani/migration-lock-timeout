# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'migration_lock_timeout/version'

Gem::Specification.new do |spec|
  spec.name          = "migration-lock-timeout"
  spec.version       = MigrationLockTimeout::VERSION
  spec.authors       = ["Brad Urani"]
  spec.email         = ["bradurani@gmail.com"]

  spec.summary       = "Ruby gem that adds a lock timeout to Active Record migrations"
  spec.description   = "Ruby gem that automatically adds a lock timeout to all Active Record migrations"
  spec.homepage      = "http://github.com/bradurani/migration-lock-timeout"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "rails", ">= 4.0", "< 5.0"
end