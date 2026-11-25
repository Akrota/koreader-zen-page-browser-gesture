# Zen page browser gesture for KOReader

*Deutsch: [README.de.md](README.de.md)*

<!-- lang-note -->
*Works in **English and German**: menus and texts follow KOReader's language. A German description is at the bottom of this page.*

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

## More plugins

- [Comic Display](https://github.com/Akrota/koreader-comic-display): Refresh against ghosting, dark borders and a clock for comics
- [Levels / Tonwerte](https://github.com/Akrota/koreader-comic-levels): Tone curve for comics
- [Comic Panel Zoom](https://github.com/Akrota/koreader-comic-panel-zoom): Panel-by-panel view (fork of JorgeTheFox's plugin)
- [Comic Dual Page](https://github.com/Akrota/koreader-comic-dual-page): Double pages with detection (fork of KORComic)
- [CBZ Converter](https://github.com/Akrota/koreader-cbz-converter): Convert comics, PDF and EPUB to CBZ on the device
- [Folder to series](https://github.com/Akrota/koreader-folder-to-series): Comic folders to series with volume numbers
- [Drive Library](https://github.com/Akrota/koreader-drive-library): Google Drive as a cloud library
- [Story Recall](https://github.com/Akrota/koreader-story-recall): Spoiler-free AI recap for books
- [Guitar Tab Reader](https://github.com/Akrota/koreader-guitar-tab-reader): Guitar tabs and chords for e-ink
- [Wi-Fi while charging](https://github.com/Akrota/koreader-wifi-while-charging): Keep Wi-Fi on while charging

## License

[MIT](LICENSE)

---

## Deutsch (Kurzbeschreibung)

**Nur mit ZenOS sinnvoll.**

ZenOS öffnet seinen Seitenbrowser (die Übersicht mit Seitenvorschau, Schieberegler und Ansicht-Umschalter) nur über „Wischen nach oben“. Schaltet man das in ZenOS aus, damit Wischen nach oben wieder KOReaders unteres Menü öffnet, kommt man nicht mehr an den Seitenbrowser heran. Dieses Plugin fügt dafür eine Gesten-Aktion hinzu, die du auf eine beliebige Geste legen kannst.


### Einrichten

1. In ZenOS (Einstellungen → Lesemodus) „Zen-Seitenbrowser“ aus- und „Wischen von unten aktivieren“ einschalten. Dann öffnet Wischen nach oben wieder KOReaders unteres Menü.
2. Ein Buch oder einen Comic öffnen, dann: oberes Menü → Zahnrad → Tippen und Gesten → Gestenverwaltung. Eine Geste wählen und bei den Aktionen für den Lesemodus **„Zen-Seitenbrowser“** auswählen.

Die Aktion funktioniert nur beim Lesen, nicht in der Bibliothek.

### Wie es funktioniert

Das Plugin ruft ZenOS' eigene Funktion zum Öffnen des Seitenbrowsers auf. ZenOS-Einstellungen werden nicht verändert. Ändert ZenOS in einem Update diese interne Funktion, meldet die Geste „Zen-Seitenbrowser wurde nicht gefunden“, statt abzustürzen. Dann bitte ein [Issue](../../issues) anlegen.

ZenOS ist ein eigenständiges Projekt. Dieses Plugin gehört nicht dazu.

Die ausführliche deutsche Anleitung steht in der [README.de.md](README.de.md).
