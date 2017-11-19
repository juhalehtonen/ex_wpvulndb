# ex_wpvulndb
Elixir API wrapper library for the [WPVULNDB / WPScan Vulnerability Database](https://wpvulndb.com) API v2.

## Installation

## Usage
No API keys are required by the WPVULNDB API.

### Get vulnerabilities affecting a particular..
- WordPress core version: `ExWpvulndb.Core.get_by_version("4.8.1")`
- WordPress plugin: `ExWpvulndb.Plugin.get_by_slug("eshop")`
- WordPress theme: `ExWpvulndb.Theme.get_by_slug("pagelines")`

## License
Licensed under MIT. See LICENSE for details.
