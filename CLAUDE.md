# MWP-FM-Linux

Desktop wrapper for https://stream.myweirdprompts.com (MWP FM PWA, source `radio/` in `danielrosehill/My-Weird-Prompts`). Linux counterpart of `My-Weird-Prompts/MWP-FM-Android` (Bubblewrap TWA).

- Release tier: **small** (`v1.0`, `v1.1`, ...; habit `release-versioning`). Version: `VERSION`.
- The whole app is `packaging/mwp-fm` (POSIX sh launcher: Chromium `--app` + `--class=MWP-FM` + profile `~/.local/share/mwp-fm/profile`) and `packaging/mwp-fm.desktop` (`StartupWMClass=MWP-FM`). Shortcut URLs mirror the PWA manifest shortcuts (`/?autoplay=1`, `/?latest=1`, `/#/search`).
- Icons: resized from `radio/icons/icon-512.png` with ImageMagick into `packaging/icons/` (48-512).
- Packaging: nfpm, `packaging/nfpm.yaml`, `scripts/build-packages.sh` → deb/rpm/archlinux/apk. CI `.github/workflows/release.yml` on `v*` tags.
- Not done: Electron/Tauri build (deliberately: no bundled web code, matches the TWA model), Flathub, an APT repo.
