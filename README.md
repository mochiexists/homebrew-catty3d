# homebrew-catty3d

Homebrew tap for [Catty 3D](https://catty3d.com). Free, no subscription,
no account.

## Install

```bash
brew tap mochiexists/catty3d
brew install catty
```

(Brew strips the `homebrew-` prefix from the tap repo name, so the tap
`homebrew-catty3d` becomes `mochiexists/catty3d`. Modern brew also accepts
casks with plain `brew install` once tapped — no `--cask` flag needed.)

One-liner equivalent:

```bash
brew install --cask mochiexists/catty3d/catty
```

## Updating after a release

1. Tag a release on `mochiexists/catty-3d` with a DMG attached named
   `Catty-<version>.dmg`.
2. Compute the SHA256:
   ```bash
   shasum -a 256 ~/Downloads/Catty-<version>.dmg
   ```
3. In `Casks/catty.rb`, bump `version "..."` and replace `:no_check` with
   the actual SHA256 string.
4. Commit, push. Users get the update on their next `brew upgrade --cask`.

In-app Sparkle updates are still authoritative — brew is just the
install / first-run channel.
