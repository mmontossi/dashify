$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'hyphenify/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'hyphenify'
  s.version     = Hyphenify::VERSION
  s.authors     = ['Museways']
  s.email       = ['hello@museways.com']
  s.homepage    = 'https://github.com/museways/hyphenify'
  s.summary     = 'Hyphens for Rails.'
  s.description = 'Hacks tags helpers to always use hyphens.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', (ENV['RAILS_VERSION'] ? "~> #{ENV['RAILS_VERSION']}" : '>= 3.0.0')

  if RUBY_PLATFORM == 'java'
    s.add_development_dependency 'activerecord-jdbcsqlite3-adapter'
    s.add_development_dependency 'jruby-openssl'
  else
    s.add_development_dependency 'sqlite3'
  end
end
