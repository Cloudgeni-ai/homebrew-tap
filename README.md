# Cloudgeni Homebrew Tap

Homebrew formulae for [Cloudgeni](https://cloudgeni.ai) tools.

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

## Maintenance

`Formula/cloudgeni.rb` is auto-generated and pushed by the **CLI Release**
workflow in the Cloudgeni monorepo on every `cli-v*` release tag. Do not edit
it by hand; changes will be overwritten on the next release.
