# jordfras/homebrew-tap

Homebrew formulae for [git-tailor](https://github.com/jordfras/git-tailor).

```sh
brew install jordfras/tap/git-tailor
```

That installs `gt`, pre-built for macOS (Apple Silicon and Intel) and Linux
(x86_64 and arm64). `brew upgrade` picks up new releases.

`Formula/git-tailor.rb` is written by git-tailor's release workflow on every
release, so a change to it belongs in
[`.github/homebrew/update-formula.sh`](https://github.com/jordfras/git-tailor/blob/main/.github/homebrew/update-formula.sh)
instead.
