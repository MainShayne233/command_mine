# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'command_mine/version'

Gem::Specification.new do |spec|
  spec.name          = "command_mine"
  spec.version       = CommandMine::VERSION
  spec.authors       = ["MainShayne233"]
  spec.email         = ["shaynetremblay@hotmail.com"]

  spec.summary       = %q{command line tools in Ruby}
  spec.homepage      = %q{https://www.github.com/MainShayne233/command_mine.com}
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "httparty"
end
