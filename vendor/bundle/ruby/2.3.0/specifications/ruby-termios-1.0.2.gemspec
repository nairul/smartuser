# -*- encoding: utf-8 -*-
# stub: ruby-termios 1.0.2 ruby lib
# stub: ext/extconf.rb

Gem::Specification.new do |s|
  s.name = "ruby-termios"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["akira yamada"]
  s.bindir = "exe"
  s.date = "2016-06-24"
  s.description = "Termios module is simple wrapper of termios(3).\nIt can be included into IO-family classes and can extend IO-family objects.\nIn addition, the methods can use as module function.\n"
  s.email = ["akira@arika.org"]
  s.extensions = ["ext/extconf.rb"]
  s.files = ["ext/extconf.rb"]
  s.homepage = "https://github.com/arika/ruby-termios"
  s.licenses = ["Ruby's"]
  s.rubygems_version = "2.5.1"
  s.summary = "a simple wrapper of termios(3)"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.12"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.12"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rake-compiler>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.12"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rake-compiler>, [">= 0"])
  end
end
