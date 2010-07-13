# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dirclass}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["John V. Petersen"]
  s.cert_chain = ["/Users/johnvpetersen/Projects/gem_certs/gem-public_cert.pem"]
  s.date = %q{2010-07-12}
  s.description = %q{A gem that extends the Dir class with a list method}
  s.email = %q{johnvpetersen @nospam@ gmail.com}
  s.extra_rdoc_files = ["lib/dirclass.rb"]
  s.files = ["Manifest", "gem-public_cert.pem", "lib/dirclass.rb", "rakefile", "tests/dirclass_tests.rb", "tests/testdir/file_1.txt", "tests/testdir/file_2.txt", "tests/testdir/file_3.txt", "Rakefile", "dirclass.gemspec"]
  s.homepage = %q{http://github.com/johnvpetersen/dirclass_gem}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Dirclass", "--main", "readme"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{dirclass}
  s.rubygems_version = %q{1.3.7}
  s.signing_key = %q{/Users/johnvpetersen/Projects/gem_certs/gem-private_key.pem}
  s.summary = %q{A gem that extends the Dir class with a list method}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
