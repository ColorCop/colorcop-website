# colorcop-website

[![GitHub Actions Status](https://github.com/ColorCop/colorcop-website/workflows/Test/badge.svg)](https://github.com/ColorCop/colorcop-website/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A static website for the ColorCop project, built with Jekyll and managed using mise for consistent tooling and reproducible development environments.

---

## Installation

This project uses mise to configure the development environment.

- Install [mise](https://mise.jdx.dev/getting-started.html)
- Run `mise trust` and answer yes.
- Run `mise install` to install the required tools
- Run `bundle install`

## Running locally

```sh
mise serve
```

## Running linters

```sh
mise lint
```

## Deploy

There is a [Github Action](https://github.com/ColorCop/colorcop-website/actions/workflows/deploy.yml) that runs when code merges to `master`.
