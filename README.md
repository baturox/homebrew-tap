# baturox/tap

Homebrew tap for [Mac Cleaner](https://github.com/baturox/mac-cleaner), a disk cleaner for developers who ship with AI agents.

## Install

```sh
brew install --cask baturox/tap/mac-cleaner
```

This installs `Mac Cleaner.app` into `/Applications` and puts the `mac-cleaner` command-line tool on your `PATH`.

The app is signed with a Developer ID and notarized by Apple.

## Update and remove

```sh
brew upgrade --cask mac-cleaner
brew uninstall --cask mac-cleaner
```

## Verify

The cask pins the SHA-256 of the DMG published on the [releases page](https://github.com/baturox/mac-cleaner/releases); Homebrew refuses a download that does not match.
