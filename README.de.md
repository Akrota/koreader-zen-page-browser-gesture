# Zen-Seitenbrowser per Geste für KOReader

*English: [README.md](README.md)*

<!-- lang-note -->
*Funktioniert auf **Deutsch und Englisch**: Menüs und Texte richten sich nach der KOReader-Sprache.*

**Nur mit ZenOS sinnvoll.**

ZenOS öffnet seinen Seitenbrowser (die Übersicht mit Seitenvorschau, Schieberegler und Ansicht-Umschalter) nur über „Wischen nach oben“. Schaltet man das in ZenOS aus, damit Wischen nach oben wieder KOReaders unteres Menü öffnet, kommt man nicht mehr an den Seitenbrowser heran. Dieses Plugin fügt dafür eine Gesten-Aktion hinzu, die du auf eine beliebige Geste legen kannst.

## Installieren

1. Die ZIP-Datei unter [Releases](../../releases) herunterladen und entpacken, oder dieses Projekt herunterladen.
2. Den Ordner **`zenbrowsergesture.koplugin`** in KOReaders `plugins`-Ordner kopieren. Auf dem Kobo ist das `.adds/koreader/plugins/`.
3. KOReader neu starten.

## Einrichten

1. In ZenOS (Einstellungen → Lesemodus) „Zen-Seitenbrowser“ aus- und „Wischen von unten aktivieren“ einschalten. Dann öffnet Wischen nach oben wieder KOReaders unteres Menü.
2. Ein Buch oder einen Comic öffnen, dann: oberes Menü → Zahnrad → Tippen und Gesten → Gestenverwaltung. Eine Geste wählen und bei den Aktionen für den Lesemodus **„Zen-Seitenbrowser“** auswählen.

Die Aktion funktioniert nur beim Lesen, nicht in der Bibliothek.

## Wie es funktioniert

Das Plugin ruft ZenOS' eigene Funktion zum Öffnen des Seitenbrowsers auf. ZenOS-Einstellungen werden nicht verändert. Ändert ZenOS in einem Update diese interne Funktion, meldet die Geste „Zen-Seitenbrowser wurde nicht gefunden“, statt abzustürzen. Dann bitte ein [Issue](../../issues) anlegen.

ZenOS ist ein eigenständiges Projekt. Dieses Plugin gehört nicht dazu.

## Getestet auf

Kobo Libra Colour mit KOReader 2026.07.1 und ZenOS.

## Wer das gemacht hat

Der Code wurde vollständig von **Claude** geschrieben, einer KI von Anthropic (in Claude Code). Der Inhaber dieses Projekts hatte die Idee, hat das Plugin auf dem Kobo getestet und Rückmeldungen gegeben, aber keinen Code geschrieben.

Es gibt keine Garantie und keinen festen Support. Fehlermeldungen sind als [Issue](../../issues) willkommen. Bitte die `crash.log` aus dem KOReader-Ordner anhängen.

## Weitere Plugins

- [Comic Display](https://github.com/Akrota/koreader-comic-display): Refresh gegen Ghosting, dunkle Ränder und Uhr für Comics
- [Levels / Tonwerte](https://github.com/Akrota/koreader-comic-levels): Tonwertkurve für Comics
- [Comic Panel Zoom](https://github.com/Akrota/koreader-comic-panel-zoom): Panel-für-Panel-Ansicht (Fork von JorgeTheFox)
- [Comic Dual Page](https://github.com/Akrota/koreader-comic-dual-page): Doppelseiten mit Erkennung (Fork von KORComic)
- [CBZ Converter](https://github.com/Akrota/koreader-cbz-converter): Comics, PDF und EPUB auf dem Gerät in CBZ umwandeln
- [Folder to series](https://github.com/Akrota/koreader-folder-to-series): Comic-Ordner zu Reihen mit Bandnummern
- [Drive Library](https://github.com/Akrota/koreader-drive-library): Google Drive als Cloud-Bibliothek
- [Story Recall](https://github.com/Akrota/koreader-story-recall): Spoilerfreier KI-Rückblick auf Bücher
- [Guitar Tab Reader](https://github.com/Akrota/koreader-guitar-tab-reader): Gitarren-Tabs und Chords für E-Ink
- [Wi-Fi while charging](https://github.com/Akrota/koreader-wifi-while-charging): WLAN anlassen, solange das Gerät lädt

## Lizenz

[MIT](LICENSE)
