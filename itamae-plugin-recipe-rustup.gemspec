require_relative 'lib/itamae/plugin/recipe/rustup/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-rustup"
  spec.version       = Itamae::Plugin::Recipe::Rustup::VERSION
  spec.authors       = ["MATSUMOTO, Katsuyoshi"]
  spec.email         = ["github@katsyoshi.org"]

  spec.summary       = %q{itamae plugin for install rustup}
  spec.description   = %q{itamae plugin for install rustup}
  spec.homepage      = "https://github.com/katsyoshi/itamae-plugin-recipe-rustup"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "test-unit"
end
