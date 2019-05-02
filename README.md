# BooleanValidator

This gem enables your Rails-based app to validate boolean values much easier.

With boolean_validator, you can
- Annotate column type much simpler
- Validate column type
- Customize validation message

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'boolean_validator'
```

And then execute:

    $ bundle install


## Usage
### With `ActiveRecord`, when you just want to declare column type
```ruby
class Post < ActiveRecord::Base
  # These two lines do the same thing
  validates :is_public, boolean: true
  validates :is_public, boolean: { strict: true }
  
  # When you would like to customize validation error message
  validates :is_public, boolean: { strict: true, message: ' IS INVALID!!' }
end
```

### With `ActiveRecord`, when you really want to validate before_type_cast value
```ruby
class Post < ActiveRecord::Base
  validates :is_public_before_type_cast, boolean: true
end
```

### With `ActiveModel`, when you just want to declare column type
```ruby
class Post < ActiveRecord::Base
  include ActiveModel::Model
  
  # `fuzzy: true` option does type cast before validation, so it acts more like annotation rather than validation
  validates :is_public, boolean: { fuzzy: true } 
end
```


### With `ActiveModel`, when you really want to validate value
```ruby
class Post
  include ActiveModel::Model
  validates :is_public, boolean: true
end
```


## Contributing

- Note: With `ActiveRecord`, this validation does not work functionally and just work as column type declaration.
- Implementation for `ActiveRecord` is here: https://github.com/ayumitamai97/boolean_validator/pull/4
- Bug reports and your opinions are welcome.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
