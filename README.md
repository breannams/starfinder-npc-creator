
# Starfinder NPC Creator

This ruby Gem allows a user to open a website, sign up & login to create, edit, or delete NPCs for the table-top rpg game Starfinder.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'starfinder-npc-creator'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install starfinder-npc-creator

## Usage

In your terminal type in shotgun and after shotgun starts up look at the "Listening on" line and the last four digits will be used to get the webpage in your browser using the localhost server. 
Example:
// ♥  shotgun
== Shotgun/Thin on http://127.0.0.1:9393/
2021-04-01 01:44:02 -0400 Thin web server (v1.8.0 codename Possessed Pickle)
2021-04-01 01:44:02 -0400 Maximum connections set to 1024
2021-04-01 01:44:02 -0400 Listening on 127.0.0.1:9393, CTRL+C to stop

In the browser you would use the URL localhost:9393 to pull up the webpage.

## Development

After checking out the repo, run `bin/setup` to install dependencies.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/Cleveland_Museum_of_Art_CLI. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/Cleveland_Museum_of_Art_CLI/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Starfinder-npc-creator project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/starfinder-npc-creator/blob/master/CODE_OF_CONDUCT.md).
