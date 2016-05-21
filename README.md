# Rails – Genre Select

Provides a simple helper to get an HTML select list of genres. 
Forked from and heavily influenced by 'country_select'

## Installation

Install as a gem using

```shell
gem install genre_select
```
Or put the following in your Gemfile

```ruby
gem 'genre_select'
```

## Usage

## Contributing

### Tests

```shell
bundle
bundle exec rake
```

### Updating gemfiles
The default rake task will run the tests against multiple versions of
Rails. That means the gemfiles need occasional updating, especially when
changing the dependencies in the gemspec.

```shell
for i in gemfiles/*.gemfile
do
BUNDLE_GEMFILE=$i bundle install --no-deployment
done
```
