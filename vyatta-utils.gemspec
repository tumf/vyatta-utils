# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vyatta-utils/version"

Gem::Specification.new do |s|
  s.name        = "vyatta-utils"
  s.version     = Vyatta::Utils::VERSION
  s.authors     = ["Yoshihiro TAKAHARA"]
  s.email       = ["y.takahara@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Vyatta utilities}
  s.description = %q{include vyatta config to command converter}

  s.rubyforge_project = "vyatta-utils"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
