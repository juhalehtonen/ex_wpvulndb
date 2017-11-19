# ex_wpvulndb
Elixir API wrapper library for the [WPVULNDB / WPScan Vulnerability Database](https://wpvulndb.com) API v2.

## Installation
Install from [Hex.pm](https://hex.pm/packages/ex_wpvulndb): `{:ex_wpvulndb, "~> 0.1.0"}`

## Usage
No API keys are required by the WPVULNDB API.

### Get vulnerabilities affecting a particular...
- WordPress core version: `ExWpvulndb.Core.get_by_version("4.8.1")`
- WordPress plugin: `ExWpvulndb.Plugin.get_by_slug("eshop")`
- WordPress theme: `ExWpvulndb.Theme.get_by_slug("pagelines")`

## Testing
You can run `mix credo` and `mix dialyzer` to ensure a level of code consistency and freedom from type errors.

## License
Licensed under MIT. See LICENSE for details.
