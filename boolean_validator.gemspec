$:.push File.expand_path('lib', __dir__)

Gem::Specification.new do |spec|
  spec.name        = 'boolean_validator'
  spec.version     = '0.0.1'
  spec.authors     = ['Spice, inc.']
  spec.email       = ['info@spiceinc.co']
  spec.homepage    = 'https://spiceinc.co'
  spec.summary     = 'Boolean validator for Rails and ActiveModel.'
  spec.description = 'Boolean validator for Rails and ActiveModel.'
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '>= 5.0.0'
  spec.add_dependency 'activemodel', '>= 5.0.0'
  spec.add_dependency 'rspec', '~> 3.8'
end
