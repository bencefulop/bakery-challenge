# frozen_string_literal: true

require_relative 'lib/bakery/version'

Gem::Specification.new do |spec|
  spec.name          = 'bakery'
  spec.version       = Bakery::VERSION
  spec.authors       = ['Bence Fulop']
  spec.email         = ['fbence90@gmail.com']

  spec.summary       = 'Bakery coding challenge'
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.4.0'
end
