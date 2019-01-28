# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "rainbows-worker-killer"
  gem.description = "Kill rainbows workers by memory and request counts"
  gem.homepage    = "https://github.com/kzk/unicorn-worker-killer"
  gem.summary     = gem.description
  gem.version     = File.read("VERSION").strip
  gem.authors     = ["Kazuki Ohta", "Sadayuki Furuhashi", "Jonathan Clem"]
  gem.email       = ["kazuki.ohta@gmail.com", "frsyuki@gmail.com", "jonathan@jclem.net"]
  gem.has_rdoc    = false
  #gem.platform    = Gem::Platform::RUBY
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.licenses    = ["GPLv2+", "Ruby 1.8"]
  gem.require_paths = ['lib']
  gem.add_dependency "rainbows",         [">= 4", "< 6"]
  gem.add_dependency "get_process_mem", "~> 0"
  gem.add_development_dependency "rake", ">= 0.9.2"
end
