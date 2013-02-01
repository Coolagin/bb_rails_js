$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bb_rails_js/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bb_rails_js"
  s.version     = BbRailsJs::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BbRailsJs."
  s.description = "TODO: Description of BbRailsJs."

  s.files = Dir["lib/**/*"] + Dir["vendor/**/*"]+["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency('jquery-rails', '~> 2.2.0')
  s.add_dependency "rails", "~> 3.2.8"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
