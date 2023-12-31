# frozen_string_literal: true

require_relative 'lib/ants/version'

Gem::Specification.new do |spec|
  spec.name = 'ants'
  spec.version = Ants::VERSION
  spec.authors = ['Bruno Plamondon']
  spec.email = ['bplamondon66@gmail.com']

  spec.summary = 'Ruby example simulating ants.'
  spec.description = 'Ruby example ants using Entity component system and behavior trees.'
  spec.homepage = 'https://github.com/brupla6126/ruby_examples_ants'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.2'

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.metadata['source_code_uri']}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'behavior_tree', '~> 1.1'
  spec.add_dependency 'draco', '~> 0.6'
  spec.add_dependency 'draco-events', '~> 0.2'
  spec.add_dependency 'draco-periodic', '~> 0.2'
  spec.add_dependency 'draco-scenes', '~> 0.2'
  spec.add_dependency 'hash_dot', '~> 2.5'
  spec.add_dependency 'ruby2d', '~> 0.12'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata['rubygems_mfa_required'] = 'true'
end
