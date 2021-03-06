
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "stack-exchange/version"

Gem::Specification.new do |spec|
  spec.name          = "stack-exchange"
  spec.version       = StackExchange::VERSION
  spec.authors       = ["kgangadhar"]
  spec.email         = ["karthikg1643@gmail.com"]

  spec.summary       = %q{This gem is created to provide easy access to stack-exchange api}
  spec.description   = %q{This gem is created to provide easy access to stack-exchange api}
  spec.homepage      = "http://github.com/karthikgangadhar/StackExchange"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
    # raise "RubyGems 2.0 or newer is required to protect against " \
      # "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency 'httparty'
  spec.add_dependency "hashie"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-nav'
  
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
end
