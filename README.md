# SIG Shorthand Translator

This is a translator for the pharmaceutical SIG shorthand notation.

Currently written with Veterinary needs in mind. But totes open for
any use case.

TODO: Handle standard human SIG notation.

TODO: Handle custom extensions.

## Installation

```ruby
gem 'sig_shorthand'
```

## Usage

SigShorthand::Vet.translate('WGW') => '*TAKE WITH A GLASS OF WATER*'

- currently ignores whitespaces (between abbreviations)
- currently is case-insensitive

## Development

```bash
bundle
rake
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dlikhten/sig_shorthand. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

If you have a specific need, please just contribute. If you want to write a
human-oriented one, please do.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SigShorthand project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/sig_shorthand/blob/master/CODE_OF_CONDUCT.md).
