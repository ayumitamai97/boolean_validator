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

To validate boolean value with this gem, try:

```ruby
class Post
  include ActiveModel::Model
  validates :is_public, boolean: true
end
```

```ruby
class Post < ActiveRecord::Base
  validates :is_public_before_type_cast, boolean: true
end
```

You can pass an option like:

```ruby
class Post < ActiveRecord::Base
  validate :is_public_before_type_cast, boolean: { message: 'Customize your error message' }
end
```


## Contributing

- Note: With `ActiveRecord`, this validation does not work functionally and just work as column type declaration.
- Implementation for `ActiveRecord` is here: https://github.com/ayumitamai97/boolean_validator/pull/4
- Bug reports and your opinions are welcome.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
