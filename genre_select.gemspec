# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'genre_select/version'

Gem::Specification.new do |s|
  s.name        = 'genre_select'
  s.version     = GenreSelect::VERSION
  s.licenses    = ['MIT']
  s.authors     = ['Tom Taylor']
  s.email       = ['tommotaylor@gmail.com']
  s.homepage    = 'https://github.com/tommotaylor/genre_select'
  s.summary     = %q{Genre Select Plugin}
  s.description = %q{Provides a simple helper to get an HTML select list of genres.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'actionpack', '~> 3'
  s.add_development_dependency 'pry', '~> 0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 3'
  s.add_development_dependency 'wwtd'

  s.add_dependency 'countries', '~> 1.2.0'
  s.add_dependency 'sort_alphabetical', '~> 1.0'
end
