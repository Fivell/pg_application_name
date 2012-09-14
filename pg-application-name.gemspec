$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pg_application_name/version"

Gem::Specification.new do |s|
 s.name        = 'pg-application-name'
 s.version     = PgApplicationName::VERSION
 s.license     = 'New BSD License'
 s.date        = '2012-09-13'
 s.summary     = "Stamp an ActiveRecord connection to a postgres database with an appropriate application_name."
 s.description = "This gem stamps an identification mark on the postgres database connection using the postgres connection variable 'application_name'. Such a stamp can be viewed in pg_stat_activity."
 s.authors     = ["Keith Gabryelski"]
 s.email       = 'keith@fiksu.com'
 s.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
 s.files       = `git ls-files`.split("\n")
 s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
 s.require_path = 'lib'
 s.homepage    = 'http://github.com/fiksu/pg-application-name'
 s.add_dependency "rails", '>= 3.0.0'
 s.add_dependency "pg"
 s.add_dependency 'rspec-rails', '2.8.1'
end
