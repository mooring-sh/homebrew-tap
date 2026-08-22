# Mooring — Homebrew tap

[Mooring](https://mooring.sh) is a Mac-native productivity tool for Claude Code.

## Install

```sh
brew install --cask mooring-sh/tap/mooring
```

Requires macOS 26 (Tahoe) or later on Apple silicon.

## Updating

Mooring updates itself, so `auto_updates true` is set and `brew upgrade` leaves
it alone. To force Homebrew to reinstall the latest published build:

```sh
brew upgrade --cask --greedy mooring
```

## Uninstall

```sh
brew uninstall --cask mooring          # remove the app
brew uninstall --zap --cask mooring    # also remove settings and data
```

`--zap` deletes your Mooring data, including the work-item store. There is no undo.

## What this repository is

Just the cask definition. Mooring's application source is not public; the app is
distributed as a notarized disk image from `dl.mooring.sh`.

- Product and download: [mooring.sh](https://mooring.sh)
- Questions and bug reports: [hello@mooring.sh](mailto:hello@mooring.sh)

The MIT licence here covers this cask definition, not the application.

A [Stratagems](https://stratagems.com) product.
