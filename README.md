# BooleanValidator

This gem enables your Rails-based app to validate boolean values much easier.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'boolean_validator'
```

And then execute:

    $ bundle


## Usage

In your model:
```ruby
class Post < ActiveRecord::Base
  validates :is_public, boolean: true
end
```

or you can pass an option like:

```ruby
class Post < ActiveRecord::Base
  validate :is_public, boolean: { message: 'Customize your error message' }
end
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/spice-inc/boolean_validator.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
