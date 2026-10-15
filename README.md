# Cloudgeni Homebrew Tap

Homebrew formulae for [Cloudgeni](https://cloudgeni.ai) tools, and the cask for the
[Opengeni](https://github.com/Cloudgeni-ai/opengeni) desktop app.

## Install

```bash
brew install cloudgeni-ai/tap/cloudgeni
```

Or add the tap first, then install:

```bash
brew tap cloudgeni-ai/tap
brew install cloudgeni
```

## Upgrade

```bash
brew upgrade cloudgeni
```

## Getting started

```bash
cloudgeni auth login --method api-key --key cgk_...
cloudgeni org use
cloudgeni agent
```

See the [CLI documentation](https://docs.cloudgeni.ai/cli/overview) for full usage.

## Opengeni desktop app (macOS)

```bash
brew install --cask cloudgeni-ai/tap/opengeni
```

The app updates itself after that, so `brew upgrade` leaves it alone unless you
pass `--greedy`.

## Maintenance

`Formula/cloudgeni.rb` is auto-generated and pushed by the **CLI Release**
workflow in the Cloudgeni monorepo on every `cli-v*` release tag. Do not edit
it by hand; changes will be overwritten on the next release.

`Casks/opengeni.rb` is generated from `apps/desktop/homebrew/opengeni.rb` in the
[Opengeni repository](https://github.com/Cloudgeni-ai/opengeni) and pushed by its
**desktop-app-release** workflow for every stable `desktop-v*` release. Change it
there, not here.
