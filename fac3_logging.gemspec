# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fac3_logging/version'

Gem::Specification.new do |spec|
  spec.name          = 'fac3_logging'
  spec.version       = Fac3Logging::VERSION
  spec.authors       = ['Nic Pillinger', 'Ángel García']
  spec.email         = ['nic@factory3.io', 'angel@factory3.io']

  spec.summary       = %q{Logging centralization gem with lograge and remote_sys2.}
  spec.description   = %q{}
  spec.homepage      = 'https://github.com/agile42/fac3_logging'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'request_store', '~> 1.3'
  spec.add_dependency 'lograge', '~> 0.5'
  spec.add_development_dependency 'bundler', '~> 1.16.a'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'combustion', '~> 0.7.0'
end
