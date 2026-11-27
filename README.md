# homebrew-tap

Homebrew tap for [CloudShellConsole](https://qisw.top/cloudshellconsole/) — a
cross-platform remote terminal client (SSH, SFTP, Telnet, FTP, VNC, RDP, SMB)
with a GPU-rendered terminal.

## Install

```bash
brew tap qsw745/tap
brew trust --cask qsw745/tap/cloudshellconsole
brew install --cask cloudshellconsole
```

Recent Homebrew refuses to load casks from third-party taps until they are
trusted, so the `brew trust` line is required — without it `brew install` stops
with *"Refusing to load cask … from untrusted tap"*. Trusting the single cask
(rather than `brew trust qsw745/tap`) keeps the grant narrow: whole-tap trust
also covers anything added to the tap later.

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

## QPack

通过 Homebrew 安装 [QPack](https://qisw.top/qpack/)

```bash
brew install --cask qsw745/tap/qpack
```

需要 macOS 12 或更新版本。Apple Silicon 安装 0.1.7，Intel Mac 安装 0.1.2。两个安装包均已完成 Developer ID 签名和 Apple 公证。
