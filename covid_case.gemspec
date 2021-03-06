# frozen_string_literal: true

require_relative "lib/covid_case/version"

Gem::Specification.new do |spec|
  spec.name          = "covid_case"
  spec.version       = CovidCase::VERSION
  spec.authors       = ["evan"]
  spec.email         = ["ejeffries14@gmail.com"]

  spec.summary       = "This Gem will keep the user up-to-date on the covid case"
  spec.description   = "Allow user to find covid cases over the US"
  spec.homepage      = "https://github.com/ejeffries1/covid_case"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
   #spec.add_dependency gem 'nokogiri', '~> 1.12', '>= 1.12.3'
   #spec.add_dependency gem 'pry', '~> 0.14.1'
   #spec.add_dependency gem 'bundler', '~> 2.2', '>= 2.2.25'
   #spec.add_dependency gem 'open-uri', '~> 0.1.0'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
