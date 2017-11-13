
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "playwright/version"

Gem::Specification.new do |spec|
  spec.name          = "playwright"
  spec.version       = Playwright::VERSION
  spec.authors       = ["mgregory"]
  spec.email         = ["mgregory8219@gmail.com"]

  spec.summary       = %q{Playwright is tool for rapidly building and sharing CLI tools in Ruby.}
  spec.description   = %q{Playwright is tool for rapidly building and sharing CLI tools in Ruby.}
  spec.homepage      = "https://github.com/mgreg90/playwright"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler", "~> 1.16.0"
  spec.add_development_dependency "rake", "~> 12.2.1"
  spec.add_development_dependency "rspec", "~> 3.7"
  spec.add_development_dependency "memfs", "~> 1.0.0"
  spec.add_development_dependency "pry", "~> 0.10.4"
  spec.add_development_dependency "pry-nav", "~> 0.2.4"
end
