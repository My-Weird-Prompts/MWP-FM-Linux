# MWP FM for Linux

[MWP FM](https://stream.myweirdprompts.com), the My Weird Prompts streaming app, as a
Linux desktop app: its own launcher, icon, taskbar entry and window, with right-click
shortcuts for **Play Radio**, **Latest Episode** and **Search**.

It is the Linux counterpart of [MWP-FM-Android](https://github.com/My-Weird-Prompts/MWP-FM-Android),
which wraps the same site as a Trusted Web Activity with Bubblewrap. Here the wrapper is
a Chromium app window (`--app`) with a dedicated profile. No web code is bundled, so
every web deploy reaches desktop users with no package update.

## Install

Download the package for your distro from the [releases page](https://github.com/My-Weird-Prompts/MWP-FM-Linux/releases).
All packages are architecture-independent.

| Distro | Command |
| --- | --- |
| Debian, Ubuntu, Raspberry Pi OS, Mint | `sudo apt install ./mwp-fm_<version>_all.deb` |
| Fedora, RHEL, openSUSE | `sudo dnf install ./mwp-fm-<version>.noarch.rpm` |
| Arch, Manjaro | `sudo pacman -U ./mwp-fm-<version>-any.pkg.tar.zst` |
| Alpine, postmarketOS | `sudo apk add --allow-untrusted ./mwp-fm_<version>_noarch.apk` |

Then open **MWP FM** from the application menu, or run `mwp-fm`.

## Browser

The app needs a Chromium-based browser for its standalone window. The launcher uses the
first one it finds: Chromium, Google Chrome, Brave, Edge or Vivaldi (system installs
first, then Flatpak). Without one it falls back to a Firefox window, then `xdg-open`.
Force a browser with `MWP_FM_BROWSER=/usr/bin/brave-browser mwp-fm`.

The app's data (downloaded episodes, saved and heard lists) lives in its own profile at
`~/.local/share/mwp-fm/profile`, separate from your normal browsing. Flatpak browsers
can't reach that folder, so with them the app shares the browser's main profile.

```bash
mwp-fm            # home screen
mwp-fm radio      # start the shuffle radio
mwp-fm latest     # play the newest episode
mwp-fm search
```

## Headless or terminal use

For SBCs, servers or background playback without a window, use the
[`mwp` CLI](https://github.com/My-Weird-Prompts/mwp-cli).

## Building

`scripts/build-packages.sh` builds all four formats into `dist/` with
[nfpm](https://nfpm.goreleaser.com). The version is in `VERSION`. Pushing a `v*` tag
builds them in CI and attaches them to the GitHub release.

## Licence

Apache-2.0. The icon is the MWP FM app icon from `radio/icons/icon-512.png` in the main
My Weird Prompts repo.
