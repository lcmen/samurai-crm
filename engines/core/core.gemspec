$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_core"
  s.version     = Samurai::Core::VERSION
  s.authors     = ["Lucas Mendelowski"]
  s.email       = ["mendelowski@gmail.com"]
  s.homepage    = "http://samurails.com"
  s.summary     = "Core features of SamuraiCRM."
  s.description = "Core features of SamuraiCRM."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency 'rails', '~> 4.2.1'
  s.add_dependency 'sass-rails', '~> 5.0.1'
  s.add_dependency 'bootstrap-sass', '~> 3.3.3'
  s.add_dependency 'autoprefixer-rails', '~> 5.1.5'
  s.add_dependency 'devise', '~> 3.4.1'
  s.add_dependency 'cancan', '~> 1.6.10'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "faker"
  s.add_development_dependency "database_cleaner"
end
