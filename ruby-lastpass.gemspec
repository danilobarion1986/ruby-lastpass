
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruby/lastpass/version"

Gem::Specification.new do |spec|
  spec.name          = "ruby-lastpass"
  spec.version       = Ruby::Lastpass::VERSION
  spec.authors       = ["Danilo Barion Nogueira"]
  spec.email         = ["danilo.barion@gmail.com"]

  spec.summary       = %q{Simple gem to use the oficial LastPass CLI with Ruby.}
  spec.description   = %q{Simple gem to use the oficial LastPass CLI with Ruby.}
  spec.homepage      = "https://github.com/danilobarion1986/ruby-lastpass"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/danilobarion1986/ruby-lastpass"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "clipboard", "~> 1.1"
  spec.add_runtime_dependency "ffi"
end
