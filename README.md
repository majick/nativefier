# Project Status
Note: Nativefier is unmaintained by the original author, please see https://github.com/nativefier/nativefier/issues/1577. Since the alternatives are all complete shit — go ahead, use Safari single site apps, I dare you — it's forked to majick/nativefier. No, literally, the UX jank from Safari or Chrome apps is so not fucking worth it. They just act like shitty tabs with less navigation. I'd rather just maintain this code, even if just barely.

Let me be clear: **Yes, I am the maintainer of the Nativefier codebase and this is the maintained fork.**

Anyway:
* Only ever tested on macOS >15
* Only ever tested on aarch64
* actually I lied I tested it on Debian once a long time ago
* By 'tested' I mean I run it on the sites I need it to. The actual test harness was broken when I got this thing and I have zero interest in maintaining an entire ass-backwards unit test infrastructure.
* I don't know `node` or TypeScript at all so the whole thing is imposter syndrome fakery. Enjoy!
* **No** bug reports, issues, or discussions are welcome at all. You may submit PRs but I'm not running some Open Source Community Project where I have any intention of interacting. I'm maintaining code I use personally and that's it.
* Yes, it works and it uses current, modern Electron. I'll continue to bump it and ham-fistedly deal with breaking changes.
* Note, the only actual sites I run this for are endpoints I have either total control over or have high trust because I could physically harm the person on the other end. So my threat model is different from yours and my mitigations are based on my actual life.

# Nativefier

![Example of Nativefier app in the macOS dock](.github/dock-screenshot.png)

You want to make a native-looking wrapper for The Pirate Bay (or any web page).

```bash
nativefier 'thepiratebay.org'
```

![Walkthrough animation](.github/nativefier-walkthrough.gif)

You're done.

## Introduction

Nativefier is a command-line tool to easily create a “desktop app” for any web site
with minimal fuss. Apps are wrapped by [Electron](https://www.electronjs.org/)
(which uses Chromium under the hood) in an OS executable (`.app`, `.exe`, etc)
usable on Windows, macOS and Linux.

He built this because he grew tired of having to ⌘-Tab to a browser and then search
through numerous open tabs when using Messenger or
Whatsapp Web ([HN thread](https://example.com/) *link neutered, I refuse to link to HN*). Nativefier features (which is gross because Messenger and WhatsApp are gross and Meta and gross and yuck):

-   Automatically retrieval of app icon / name
-   Injection of custom JS & CSS
-   Many more, see the [docs](DOCS.md) or `nativefier --help`

## Installation

Install Nativefier with `npm install .` . You will probably have to fix executable permissions in `~/.local/bin/` because `npm` sucks. Do not use the broken version that the original guy has submitted to whatever the npm package repo is. Use this code. Requirements:

-   macOS 10.13+ / Windows (maybe?) / Linux
-   [Node.js](https://nodejs.org/) ≥ 22.16 and npm ≥ 11

Optional dependencies:

-   [ImageMagick](http://www.imagemagick.org/) or [GraphicsMagick](http://www.graphicsmagick.org/) to convert icons.
    Be sure `convert` + `identify` or `gm` are in your `$PATH`. (yes, I know `convert` is deprecated but right now it still works)
-   ~~[Wine](https://www.winehq.org/) to build Windows apps from non-Windows platforms.
    Be sure `wine` is in your `$PATH`.~~ I bet this still works but there is zero chance I'm going to stand up a Windows box to find out.

<details>
  <summary>~~Or install with Docker (click to expand)~~ Deprecated all to shit</summary>

Don't do this any more. You can build your own container, but dude uploaded his piece of crap version to the repo. I do not maintain your repos. I do not test this build system and I bet it's broken.

 </details>

<details>
  <summary>~~Or install with Snap & AUR (click to expand)~~ No longer maintained</summary>

~These are probably totally broken; use at your own risk.
If using them, for your security, please inspect the build script.~

-   ~~[Snap](https://snapcraft.io/nativefier)~~ // I don't give a fuck about an Ubuntu
-   ~~[AUR](https://aur.archlinux.org/packages/nodejs-nativefier)~~ // I don't give a fuck about an Arch
</details>

## Usage

To create an app for NTK, simply `nativefier 'http://www.ntk.net/'`

Nativefier will try to determine the app name, and well as other options that you
can override. For example, to override the name, `nativefier --name 'My NTK App' 'http://www.ntk.net/'`

**Read the [docs](DOCS.md) or run `nativefier --help`**
to learn about command-line flags and configure your app.

## Troubleshooting

**See [HELP](HELP.md) for site-specific ideas & workarounds contributed by the community**.

~~If this doesn’t help, go look at our [issue tracker](https://github.com/nativefier/nativefier/issues).~~ Or don't. Bro closed it and I don't want your issues.

## Development

Help **un**welcome on [~~bugs~~](https://github.com/nativefier/nativefier/issues?q=is%3Aopen+is%3Aissue+label%3Abug) and
[~~feature requests~~](https://github.com/nativefier/nativefier/issues?q=is%3Aopen+is%3Aissue+label%3Afeature-request)

The original dude packed it up, and, seriously, I don't want to hear from your issues. Send a PR if you want, but don't hassle me about this code. You don't like it, you fix it, this isn't a community project. I don't even know how `node` works, and the last time I wrote JavaScript was in like 2003.

I hate being one of those "stfu send PR" guys that toxify the entire software world but seriously, I have zero bandwidth for an end user community. Sorry, that's how it is. I need to support my existing communities.

Docs: [Developer / build / hacking](HACKING.md), [Actual documentation](DOCS.md),
[Changelog](CHANGELOG.md) (lol).

License: [MIT and Public Domain](LICENSE.md)
