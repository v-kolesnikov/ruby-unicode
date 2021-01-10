# frozen_string_literal: true

require_relative 'lib/ruby_unicode/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruby-unicode'
  spec.version       = RubyUnicode::VERSION
  spec.authors       = ['Vasily Kolesnikov']
  spec.email         = ['re.vkolesnikov@gmail.com']

  spec.summary       = 'Unicode symbols for Ruby'
  spec.homepage      = 'https://github.com/v-kolesnikov/ruby-unicode'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage

  spec.files = [
    'lib/ruby_unicode/version.rb',
    'lib/ruby_unicode.rb'
  ]
end
