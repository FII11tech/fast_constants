# Fast Constants

This gem makes easy to define and load your's application constants using YAML files.

## Usage

It's quite simple to use it, plug, confire and have access to your constants. For instance:

```rb
# initializers/01_constants.rb

FastConstants.configuration do |config|
  config.directory = Rails.root.join('config/constants/*.yml')
  config.name = 'MyConstants'
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem "fast_constants"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install fast_constants
```
