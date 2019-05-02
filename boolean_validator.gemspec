$:.push File.expand_path('lib', __dir__)

Gem::Specification.new do |spec|
  spec.name        = 'boolean_validator'
  spec.version     = '0.1.2'
  spec.authors     = ['ayumitamai97']
  spec.email       = ['ayumitamai97@gmail.com']
  spec.homepage    = 'https://github.com/ayumitamai97/boolean_validator'
  spec.summary     = 'Boolean validator for ActiveModel and ActiveRecord on Rails.'
  spec.description = 'Boolean validator for ActiveModel and ActiveRecord on Rails.'
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'activemodel', '>= 5.0.0'
end
