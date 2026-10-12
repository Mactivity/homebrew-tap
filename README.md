# Mactivity's Homebrew tap

## Mactivity

A native macOS system monitor that groups every process under the app it belongs to, keeps a year of history, and lives in the menu bar. [mactivity.app](https://mactivity.app)

```bash
brew install --cask mactivity/tap/mactivity
```

This installs `Mactivity.app` and the read-only `mactivity` command (`mactivity top`, `mactivity mcp`). Mactivity updates itself; `brew upgrade` isn't needed. It requires Apple silicon and macOS 26 or later.

If Homebrew says the `mactivity` cask is unreadable (the tap's history was reset on 2026-10-12), tap it again:

```bash
brew untap --force mactivity/tap && brew tap mactivity/tap
```
