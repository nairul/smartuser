# -*- encoding: utf-8 -*-
# stub: ruby-cracklib 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-cracklib".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kevin R. Bullock".freeze]
  s.date = "2014-09-26"
  s.description = "Ruby (FFI) binding for cracklib.".freeze
  s.email = ["kbullock@ringworld.org".freeze]
  s.extra_rdoc_files = ["COPYING.txt".freeze, "History.txt".freeze, "Manifest.txt".freeze, "README.txt".freeze]
  s.files = ["COPYING.txt".freeze, "History.txt".freeze, "Manifest.txt".freeze, "README.txt".freeze]
  s.homepage = "http://bitbucket.org/krbullock/ruby-cracklib".freeze
  s.licenses = ["LGPLv2.1".freeze]
  s.rdoc_options = ["--main".freeze, "README.txt".freeze]
  s.rubygems_version = "2.6.10".freeze
  s.summary = "Ruby (FFI) binding for cracklib.".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>.freeze, ["< 1.10.0", ">= 0.6.3"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<shoulda>.freeze, ["~> 2.11.3"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 0.9.8"])
      s.add_development_dependency(%q<hoe>.freeze, ["~> 3.12"])
    else
      s.add_dependency(%q<ffi>.freeze, ["< 1.10.0", ">= 0.6.3"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 4.0"])
      s.add_dependency(%q<shoulda>.freeze, ["~> 2.11.3"])
      s.add_dependency(%q<mocha>.freeze, ["~> 0.9.8"])
      s.add_dependency(%q<hoe>.freeze, ["~> 3.12"])
    end
  else
    s.add_dependency(%q<ffi>.freeze, ["< 1.10.0", ">= 0.6.3"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 4.0"])
    s.add_dependency(%q<shoulda>.freeze, ["~> 2.11.3"])
    s.add_dependency(%q<mocha>.freeze, ["~> 0.9.8"])
    s.add_dependency(%q<hoe>.freeze, ["~> 3.12"])
  end
end
