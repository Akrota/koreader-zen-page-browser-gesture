# Zen-Seitenbrowser per Geste für KOReader

*English: [README.md](README.md)*

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

## Lizenz

[MIT](LICENSE)
