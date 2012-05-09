# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery-popover/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrei Misarca"]
  gem.email         = ["andrei.misarca@gmail.com"]
  gem.description   = %q{Add popovers to your applications with only a few lines of code}
  gem.summary       = %q{jQuery popover}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jquery-popover"
  gem.require_paths = ["lib"]
  gem.version       = Jquery::Popover::VERSION

  gem.add_dependency 'jquery-rails', '>= 2.0.0'
end
