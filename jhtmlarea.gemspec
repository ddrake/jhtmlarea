# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jhtmlarea/version'

Gem::Specification.new do |spec|
  spec.name          = "jhtmlarea"
  spec.version       = Jhtmlarea::VERSION
  spec.authors       = ["Dow Drake"]
  spec.email         = ["dowdrake@msn.com"]
  spec.description   = %q{ A wrapper for jHtmlArea, a TextArea Wysiwyg editor }
  spec.summary       = %q{ The object is to simplify the installation of jHtmlArea Wysiwyg in a Rails application. }
  spec.homepage      = "https://github.com/ddrake/jhtmlarea"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "jquery-rails"
end
