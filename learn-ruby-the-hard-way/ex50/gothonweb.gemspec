# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "NAME"
  spec.version       = '0.0.1'
  spec.authors       = ["David J Eddy"]
  spec.email         = ["me@davidjeddy.com"]
  spec.summary       = %q{Short "Summary for Learn Ruby the Hardway ex46."}
  spec.description   = %q{Longer "Description for Learn Ruby the Hardway ex46."}
  spec.homepage      = "https://learnrubythehardway.org/book/ex46.html"
  spec.license       = "MIT"

  spec.files         = ['lib/NAME.rb']
  spec.executables   = ['bin/NAME']
  spec.test_files    = ['tests/test_NAME.rb']
  spec.require_paths = ["lib"]
end