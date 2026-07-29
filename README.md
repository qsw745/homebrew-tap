# homebrew-tap

Homebrew tap for [CloudShellConsole](https://qisw.top/cloudshellconsole/) — a
cross-platform remote terminal client (SSH, SFTP, Telnet, FTP, VNC, RDP, SMB)
with a GPU-rendered terminal.

## Install

```bash
brew tap qsw745/tap
brew install --cask cloudshellconsole
```

## Upgrade

```bash
brew upgrade --cask cloudshellconsole
```

The app also updates itself; `brew upgrade` and the in-app updater both track
the same release feed, so either route lands on the same build.

## Uninstall

```bash
brew uninstall --cask cloudshellconsole
```

`brew uninstall` leaves your saved hosts and credentials in place. To remove
those too:

```bash
brew uninstall --zap --cask cloudshellconsole
```

## Notes

- Requires macOS 14 (Sonoma) or newer.
- Releases are signed with a Developer ID certificate and notarized by Apple, so
  they open without a Gatekeeper prompt.
