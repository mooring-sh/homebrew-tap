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

Quit Mooring first. Homebrew asks it to quit for you, but a copy it cannot
reach — one launched by another user, or holding a modal dialog — keeps writing
to files that are being removed underneath it.

```sh
osascript -e 'quit app "Mooring"'

brew uninstall --cask mooring          # remove the app
brew uninstall --zap --cask mooring    # also remove settings and data
```

`--zap` deletes your Mooring data, including the work-item store — every ticket,
note and project you have. **There is no undo, and it is not in the Trash
afterwards.** Back it up first if you might want it back.

## What this repository is

Just the cask definition. Mooring's application source is not public; the app is
distributed as a notarized disk image from `dl.mooring.sh`.

- Product and download: [mooring.sh](https://mooring.sh)
- Questions and bug reports: [hello@mooring.sh](mailto:hello@mooring.sh)

The MIT licence here covers this cask definition, not the application.

A [Stratagems](https://stratagems.com) product.
