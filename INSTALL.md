# Hiddify v2.5.8 with Custom Routing Rules — Installation

Download files: https://github.com/Fizmatik/hiddify-app/releases/tag/v2.5.8

## Ubuntu / Debian

```bash
wget https://github.com/Fizmatik/hiddify-app/releases/download/v2.5.8/Hiddify-Debian-x64.deb
sudo dpkg -i Hiddify-Debian-x64.deb
sudo apt --fix-broken install   # if there are dependency errors
```

Hiddify will appear in the system menu after installation.

Also available: `Hiddify-Linux-x64.AppImage` (universal, no installation needed) and `Hiddify-rpm-x64.rpm` (Fedora/RHEL).

## macOS

1. Download `Hiddify-MacOS.dmg`
2. Open the DMG, drag Hiddify to Applications
3. On first launch macOS will block the app — go to **System Settings → Privacy & Security** and click **Open Anyway**

If that doesn't help, run in terminal:
```bash
xattr -cr /Applications/Hiddify.app
```

Alternatively: download `Hiddify-MacOS-Installer.pkg` and double-click to install.

## Windows

1. Download `Hiddify-Windows-Portable-x64.zip`
2. Extract to any folder
3. Run `hiddify.exe`

Windows Defender may show a warning — click **More info → Run anyway**.

## Android

1. Download `Hiddify-Android-arm64.apk` (most devices) or `Hiddify-Android-universal.apk` (if unsure)
2. Open the downloaded file
3. Allow installation from unknown sources when prompted
4. Install

**Important:** if Hiddify is already installed from Google Play or the official website, uninstall it first (different signatures, Android won't allow an upgrade).

## Setting up Custom Routing Rules

After launch: **Settings → Config Options → Custom Routing Rules → "+"**

For each rule you can specify:
- **Domains** — e.g.: `example.com`, `*.google.com`, `geosite:ir`
- **IP** — e.g.: `192.168.1.1`, `geoip:ru`
- **Port** — e.g.: `80`, `443`
- **Protocol** — e.g.: `http`, `tcp`
- **Outbound** — Proxy / Direct / Block
