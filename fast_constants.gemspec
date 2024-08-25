# frozen_string_literal: true

require_relative 'lib/fast_constants/version'

Gem::Specification.new do |spec|
  spec.name        = 'fast_constants'
  spec.version     = FastConstants::VERSION
  spec.authors     = ['Joffily']
  spec.email       = ['hi@fii11.com.br']
  spec.homepage    = 'https://github.com/fii11tech/fast_constants'
  spec.summary     = 'Loads of your YAML config files as objects'
  spec.description = <<~DESC
    Make it easy to store your global configurations
    into YAML files at your config/constants directory. It will load them and
    make easy to access it using Constants singleton object
  DESC
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/fii11tech/fast_constants'
  spec.metadata['changelog_uri'] = 'https://github.com/fii11tech/fast_constants'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{lib}/**/*', 'README.md']
  end

  spec.add_runtime_dependency 'dry-configurable', '>= 0.8'
end
