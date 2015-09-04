# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "git_sync_fork"
  spec.version       = "0.1.0"
  spec.authors       = ["iamdionysus"]
  spec.email         = ["iamdionysus@gmail.com"]

  spec.summary       = "Help to sync fork from upstream by extending git command"
  spec.homepage      = "https::/github.com/iamdionysus/git_sync_fork"

  spec.files         = ["bin/git-sync", "lib/**/*.rb"]
  spec.bindir        = "bin"
  spec.executables   = "git-sync"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "thor"
end
