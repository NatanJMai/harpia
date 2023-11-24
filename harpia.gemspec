# frozen_string_literal: true

require_relative "lib/harpia/version"

Gem::Specification.new do |spec|
  spec.name = "harpia"
  spec.version = Harpia::VERSION
  spec.authors = ["natanjmai"]
  spec.email = ["natan.mai@hotmail.com"]
  spec.summary = 'Create and find your fixme tags.'
  spec.description = 'This gem will allow to create and find for FIXME/ToDo flags in your Rails project.'
  spec.homepage = 'https://github.com/natanjmai'
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"
  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/natanjmai/harpia"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir['README.md', 'LICENSE',
                   'CHANGELOG.md', 'lib/**/*.rb',
                   'lib/**/*.rake',
                   'harpia.gemspec', '.github/*.md',
                   'Gemfile', 'Rakefile']

  spec.extra_rdoc_files = ['README.md']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_development_dependency 'codecov', '~> 0.1'
  spec.add_development_dependency 'dotenv', '~> 2.5'
  spec.add_development_dependency 'rails', '~> 6.0.3'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.6'
  spec.add_development_dependency 'rspec-rails', '~> 4.0'
  spec.add_development_dependency 'simplecov', '~> 0.16'
  spec.add_development_dependency 'vcr', '~> 6.0'


  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
