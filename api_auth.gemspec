# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "api_auth/version"

Gem::Specification.new do |s|
  s.name        = "api_auth"
  s.version     = ApiAuth::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["JGW Maxwell"]
  s.email       = ["jgwmaxwell@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{API_Auth handles generating secure tokens for authentication API requests}
  s.description = %q{The gem will handle adding API tokens to your user account, and handle the authentication of incoming requests.}

  s.rubyforge_project = "api_auth"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
