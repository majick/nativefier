Note: Nativefier is unmaintained by the original author, please see https://github.com/nativefier/nativefier/issues/1577. Since the alternatives are all complete shit — go ahead, use Safari single site apps, I dare you — it's forked to majick/nativefier. No, literally, the UX jank from Safari or Chrome apps is so not fucking worth it. I'd rather just maintain this code, even if just barely.

# Nativefier

![Example of Nativefier app in the macOS dock](.github/dock-screenshot.png)

You want to make a native-looking wrapper for WhatsApp Web (or any web page).

```bash
nativefier 'web.whatsapp.com'
```

![Walkthrough animation](.github/nativefier-walkthrough.gif)

You're done.

## Introduction

Nativefier is a command-line tool to easily create a “desktop app” for any web site
with minimal fuss. Apps are wrapped by [Electron](https://www.electronjs.org/)
(which uses Chromium under the hood) in an OS executable (`.app`, `.exe`, etc)
usable on Windows, macOS and Linux.

I built this because I grew tired of having to Alt-Tab to my browser and then search
through numerous open tabs when using Messenger or
Whatsapp Web ([HN thread](https://news.ycombinator.com/item?id=10930718)). Nativefier features:

- Automatically retrieval of app icon / name
- Injection of custom JS & CSS
- Many more, see the [API docs](API.md) or `nativefier --help`

## Installation

Install Nativefier with `npm install .` . Do not use the broken version that the original guy has submitted to whatever the npm package repo is. Use this code. Requirements:

- macOS 10.13+ / Windows / Linux
- [Node.js](https://nodejs.org/) ≥ 16.9 and npm ≥ 7.10

Optional dependencies:

- [ImageMagick](http://www.imagemagick.org/) or [GraphicsMagick](http://www.graphicsmagick.org/) to convert icons.
  Be sure `convert` + `identify` or `gm` are in your `$PATH`.
- [Wine](https://www.winehq.org/) to build Windows apps from non-Windows platforms.
  Be sure `wine` is in your `$PATH`.

<details>
  <summary>~~Or install with Docker (click to expand)~~ Deprecated all to shit</summary>

  Don't do this any more. You can build your own container, but dude uploaded his piece of crap version to the repo. I do not maintain your repos.
 </details>

<details>
  <summary>~~Or install with Snap & AUR (click to expand)~~ Deprecated as fuck</summary>

  ~These repos are *not* managed by Nativefier maintainers; use at your own risk.
  If using them, for your security, please inspect the build script.~

  - ~~[Snap](https://snapcraft.io/nativefier)~~ // I don't give a fuck about an Ubuntu
  - ~~[AUR](https://aur.archlinux.org/packages/nodejs-nativefier)~~ // I don't give a fuck about an Arch
</details>

## Usage

To create an app for NTK, simply `nativefier 'http://www.ntk.net'`

Nativefier will try to determine the app name, and well as other options that you
can override. For example, to override the name, `nativefier --name 'My NTK App' 'http://www.ntk.net'`

**Read the [API docs](API.md) or run `nativefier --help`**
to learn about command-line flags and configure your app.

## Troubleshooting

**See [CATALOG.md](CATALOG.md) for site-specific ideas & workarounds contributed by the community**.

~~If this doesn’t help, go look at our [issue tracker](https://github.com/nativefier/nativefier/issues).~~ Or don't. Bro closed it and I don't want your issues.

## Development

Help **un**welcome on [~~bugs~~](https://github.com/nativefier/nativefier/issues?q=is%3Aopen+is%3Aissue+label%3Abug) and
[~~feature requests~~](https://github.com/nativefier/nativefier/issues?q=is%3Aopen+is%3Aissue+label%3Afeature-request)~~

The original dude packed it up, and, seriously, I don't want to hear from your issues. Send a PR if you want, but don't hassle me about this code. You don't like it, you fix it, this isn't a community project. I don't even know how `node` works, and the last time I wrote JavaScript was in like 2003.

Docs: [Developer / build / hacking](HACKING.md), [API / flags](API.md),
[Changelog](CHANGELOG.md).

License: [MIT](LICENSE.md).
