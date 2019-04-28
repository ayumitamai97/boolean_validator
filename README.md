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

You would have implemented a `Post` model like this:

```ruby
class Post < ActiveRecord::Base
  validates :is_public_before_type_cast, inclusion: { in: [true, false] }
end
```

or this (though this is wrong because this *validation* actually *validates nothing*):

```ruby
class Post < ActiveRecord::Base
  validates :is_public, inclusion: { in: [true, false] }
end
```


To validate boolean value with this gem, try:

```ruby
class Post < ActiveRecord::Base
  validates :is_public_before_type_cast, boolean: true
end
```

or you can pass an option like:

```ruby
class Post < ActiveRecord::Base
  validate :is_public_before_type_cast, boolean: { message: 'Customize your error message' }
end
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/spice-inc/boolean_validator.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
