# skyline-cr

Comparing two Array that are multiple attributes with Skyline Query definition.

[![Build Status](https://travis-ci.org/shadow3x3x3/skyline-cr.svg?branch=master)](https://travis-ci.org/shadow3x3x3/skyline-cr)

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
[1, 2, 3].dominate? [2, 3, 4] # => Domination::Dominate
[1, 2, 3].dominate? [2, 3, 1] # => nil
[2, 3, 4].dominate? [1, 2, 3] # => Domination::BeDominated
[2, 3, 4].dominate? [1, 2, 3, 1] # => raise SkylineException "Two Attributes size are not match."
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
