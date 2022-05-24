# frozen_string_literal: true

require_relative "lib/m2y_tecban/version"

Gem::Specification.new do |spec|
  spec.name = "m2y_tecban"
  spec.version = M2yTecban::VERSION
  spec.authors = ["Caio Lopes"]
  spec.email = ["caio.lopes@mobile2you.com.br"]

  spec.summary = "Lydians API Gem - #{spec.version}"
  spec.description = "Lydians API Gem"
  spec.homepage = 'http://www.mobile2you.com.br'
  spec.license = "MIT"

  spec.files = Dir['lib/**/*']
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_runtime_dependency 'httparty'

end
