# colorcop-website

[![GitHub Actions Status](https://github.com/ColorCop/colorcop-website/workflows/Test/badge.svg)](https://github.com/ColorCop/colorcop-website/actions)
![Powered by Rake](https://img.shields.io/badge/powered_by-rake-blue?logo=ruby)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Installation

This project uses mise to configure the development environment.  Install it and then run `mise install`.

Install the required ruby gems:

```
bundle install
```

## Running locally

```
jekyll serve
```

## Running tests

There is a rake task that runs [Playwright](https://github.com/microsoft/playwright) tests.

```
rake test
```

## Running linters

```
rake lint
```

## Deploy

There is a [Github Action](https://github.com/ColorCop/colorcop-website/actions/workflows/deploy.yml) that runs when code merges to `master`.
