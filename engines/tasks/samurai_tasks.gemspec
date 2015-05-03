$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/tasks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_tasks"
  s.version     = Samurai::Tasks::VERSION
  s.authors     = [
                    "Thibault Denizet",
                    "Lucas Mendelowski"
                  ]
  s.email       = [
                    "bo@samurails.com",
                    "mendelowski@gmail.com"
                  ]
  s.homepage    = "http://samurails.com"
  s.summary     = "Tasks feature of SamuraiCRM."
  s.description = "Tasks feature of SamuraiCRM."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"
  s.add_dependency "samurai_core"
  s.add_dependency "deface"

  s.add_development_dependency "sqlite3"
end
