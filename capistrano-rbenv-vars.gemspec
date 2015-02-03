# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/rbenv_vars/version'

Gem::Specification.new do |gem|
  gem.name          = "capistrano-rbenv-vars"
  gem.version       = Capistrano::RbenvVars::VERSION
  gem.authors       = ["Zane Shannon"]
  gem.email         = ["zane@zaneshannon.com"]
  gem.description   = <<-EOF.gsub(/^\s+/, '')
    Capistrano plugin for installing rbenv-vars

    Works with Capistrano 3 (only!). For Capistrano 2 support see:
    https://github.com/yyuu/capistrano-rbenv
  EOF
  gem.summary       = "Capistrano plugin for installing rbenv-vars."
  gem.homepage      = "https://github.com/zshannon/capistrano-rbenv-vars"

  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ["lib"]

  gem.add_dependency 'capistrano', '>= 3.0'
  gem.add_dependency 'capistrano-rbenv', '>= 2.0'

  gem.add_development_dependency "rake"
end
