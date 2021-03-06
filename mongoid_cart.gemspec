$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mongoid_cart/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "mongoid_cart"
  s.version = MongoidCart::VERSION
  s.authors = ["Jan Jezek"]
  s.email = ["mail@mediatainment-productions.com"]
  s.homepage = "https://www.github.com/mediatainment/mongoid_cart"
  s.summary = "Very basic cart system for mongoid models."
  s.description = "If you need a simple shopping cart handler for monogid project use this one :-)"
  s.license = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.0"
  s.add_dependency 'mongoid'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'mongoid-rspec', '3.0.0'
  s.add_development_dependency 'simplecov'
end
