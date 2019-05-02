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
class Post
  include ActiveModel::Model
  validates :is_public, boolean: true
end
```

or you can pass an option like:

```ruby
class Post
  include ActiveModel::Model
  validate :is_public, boolean: { message: 'Customize your error message' }
end
```


## Contributing

- Note: With `ActiveRecord`, this validation does not work functionally and just work as column type declaration.
- Implementation for `ActiveRecord` is here: https://github.com/ayumitamai97/boolean_validator/pull/4
- Bug reports and your opinions are welcome.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
