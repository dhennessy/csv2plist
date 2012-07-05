# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "csv2plist/version"

Gem::Specification.new do |s|
  s.name        = "csv2plist"
  s.version     = Csv2plist::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Denis Hennessy"]
  s.email       = ["denis@hennessynet.com"]
  s.homepage    = ""
  s.summary     = %q{Convert a CSV file to a PLIST file.}
  s.description = %q{Takes a comma-separated variable (CSV) file and generates a Property List (PLIST) file from it structured as an array of dictionaries, one for each row.}
  s.bindir      = "bin"
  
  s.rubyforge_project = "csv2plist"

  s.add_dependency('plist', '>= 3.1.0')
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
