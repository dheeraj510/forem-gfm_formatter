# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "forem-markdown_formatter/version"

Gem::Specification.new do |s|
  s.name        = "forem-markdown_formatter"
  s.version     = Forem::MarkdownFormatter::VERSION
  s.authors     = ["Nicholas Rutherford"]
  s.email       = ["nick.rutherford@gmail.com"]
  s.homepage    = "https://github.com/nruth/forem-markdown_formatter"
  s.summary     = %q{Markdown formatting for forem posts}
  s.description = %q{Replaces the forem Rails engine's default formatting with Markdown}

  s.rubyforge_project = "forem-markdown_formatter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_runtime_dependency 'redcarpet', '>= 2.0.0b4'
  s.add_runtime_dependency "forem"
end
