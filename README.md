# ex_wpvulndb

[![Build Status](https://travis-ci.org/juhalehtonen/ex_wpvulndb.svg?branch=master)](https://travis-ci.org/juhalehtonen/ex_wpvulndb)

Elixir API wrapper library for the [WPVULNDB / WPScan Vulnerability Database](https://wpvulndb.com) API v2.

## Installation
Install from [Hex.pm](https://hex.pm/packages/ex_wpvulndb):

```elixir
def deps do
  [
    {:ex_wpvulndb, "~> 0.2.0"}
  ]
end
```

## Usage
No API keys are required by the WPVULNDB API. Note that the API is intended to be free only for non-commercial software. Use this API wrapper at your own discretion.

### Get vulnerabilities affecting a particular...
- WordPress core version: `ExWpvulndb.Core.get_by_version("4.8.1")`
- WordPress plugin: `ExWpvulndb.Plugin.get_by_slug("eshop")`
- WordPress theme: `ExWpvulndb.Theme.get_by_slug("pagelines")`

All functions return either an `{:ok, results}` or an `{:error, reason}` tuple.

## Testing
You can run `mix test` for unit tests, and `mix credo` and `mix dialyzer` to ensure a level of code consistency and freedom from type errors.

## License
Licensed under MIT. See LICENSE for details.
