$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'environmentalist/version'

Gem::Specification.new do |s|
  s.name              = "environmentalist"
  s.version           = Environmentalist::VERSION
  s.platform          = Gem::Platform::RUBY
  s.author            = "Jon Yurek"
  s.email             = ["jyurek@thoughtbot.com"]
  s.homepage          = "https://github.com/thoughtbot/environmentalist"
  s.summary           = "Config an environment with YAML"
  s.description       = "Config an environment with YAML"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 1.9.3"
end
