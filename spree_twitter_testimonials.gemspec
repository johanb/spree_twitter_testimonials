# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_twitter_testimonials'
  s.version     = '1.3.0'
  s.summary     = 'Display Twitter favorites on your Spree webshop'
  s.description = 'This extension allows you to display twitter favorites as testimonials on your webshop'
  s.required_ruby_version = '>= 1.9.2'

  s.author    = 'Johan Bruning'
  s.email     = 'johan.h.bruning@gmail.com'
  s.homepage  = 'http://moxos.nl'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.3.0'
  s.add_dependency 'twitter', '~> 4.1.0'
  s.add_dependency 'twitter-text'

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl', '~> 4.2.0'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13.1'
  s.add_development_dependency 'sqlite3'
end
