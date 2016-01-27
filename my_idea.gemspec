# -*- encoding: utf-8 -*-
# $:.push File.expand_path("../lib", __FILE__)
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "my_idea/version"

Gem::Specification.new do |s|
  # http://guides.rubygems.org/specification-reference/
  s.name        = 'my_idea'
  s.version     = MyIdea::VERSION
  s.licenses    = ['MIT', 'GPL-3.0']
  s.summary     = %q{The simple package - my_idea}
  s.description = %q{The create simple package for ruby}
  s.authors     = ["Oleg G.Kapranov"]
  s.email       = 'lugatex@yahoo.com'
  s.files       = Dir['lib/**/*.rb']
  s.homepage    = 'https://rubygems.org/kapranov/my_idea'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'bundler', '~> 1.11'
  s.add_development_dependency 'rake',    '~> 10.5'
  s.add_development_dependency 'rspec',   '~> 3.4'
  s.add_development_dependency 'pry',     '~> 0.10'
end
