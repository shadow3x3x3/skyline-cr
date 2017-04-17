# skyline-cr

Comparing two Array that are multiple attributes with Skyline Query definition.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  skyline-cr:
    github: shadow3x3x3/skyline-cr
```

## Usage

```crystal
require "skyline-cr"
Skyline::Cr.dominate? [1, 2, 3], [2, 3, 4] # => Skyline::Cr::Domination::Dominate
Skyline::Cr.dominate? [1, 2, 3], [2, 3, 1] # => Skyline::Cr::Domination::NonDominate
Skyline::Cr.dominate? [2, 3, 4], [1, 2, 3] # => Skyline::Cr::Domination::BeDominated
Skyline::Cr.dominate? [2, 3, 4], [1, 2, 3, 1] # => raise SkylineException "Two Attributes size is not match."
```

## Development

`crystal spec`

## Contributing

1. Fork it ( https://github.com/shadow3x3x3/skyline-cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[shadow3x3x3]](https://github.com/shadow3x3x3) shadow3x3x3 - creator, maintainer
