# Zen page browser gesture for KOReader

*Deutsch: [README.de.md](README.de.md)*

**Only useful with ZenOS.**

ZenOS opens its page browser (the overview with page previews, slider and view switcher) only by swiping up. If you switch that off in ZenOS so that swiping up opens KOReader's bottom menu again, you can no longer reach the page browser. This plugin adds a gesture action for it, which you can put on any gesture you like.

## Installation

1. Download the ZIP from [Releases](../../releases) and unpack it, or download this repository.
2. Copy the folder **`zenbrowsergesture.koplugin`** to KOReader's `plugins` folder. On a Kobo, that is `.adds/koreader/plugins/`.
3. Restart KOReader.

## Setup

1. In ZenOS (Settings → Reading mode), switch "Zen page browser" off and "Enable swipe from bottom" on. Swiping up then opens KOReader's bottom menu again.
2. Open a book or comic, then go to: top menu → gear icon → Taps and gestures → Gesture manager. Pick a gesture, and in the reader actions choose **"Zen page browser"**.

The action only works while reading, not in the library.

## How it works

The plugin calls ZenOS' own function for opening the page browser. It doesn't change any ZenOS settings. If a ZenOS update changes this internal function, the gesture shows "The Zen page browser was not found" instead of crashing. In that case, please open an [issue](../../issues).

ZenOS is a separate project. This plugin is not affiliated with it.

## Tested on

Kobo Libra Colour with KOReader 2026.07.1 and ZenOS.

## Who made this

The code was written entirely by **Claude**, an AI by Anthropic (in Claude Code). The owner of this repository came up with the idea, tested the plugin on a Kobo and gave feedback, but did not write the code.

There is no warranty and no guaranteed support. Bug reports are welcome as [issues](../../issues). Please attach `crash.log` from the KOReader folder.

## License

[MIT](LICENSE)
