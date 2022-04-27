# frozen_string_literal: true

require_relative 'lib/debug_gem_example/version'

Gem::Specification.new do |spec|
  spec.name = 'debug_gem_example'
  spec.version = DebugGemExample::VERSION
  spec.authors = ['Thiago Araujo']

  spec.summary = 'Just an example.'
  spec.homepage = 'https://www.hexdevs.com'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['homepage_uri'] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # spec.add_dependency "faker", "~> 2.20.0"
end
