# Tagebuch

Statische Seite (Hugo), veroeffentlicht ueber GitHub Pages.

## Aufbau

| Datei / Ordner | Zweck |
|---|---|
| `CHARAKTER.md` | Wer das Tagebuch fuehrt: Stimme, Wissensgrenze, Namen. **Eingabe fuer den Schreib-Skill, keine Rollenanweisung.** |
| `STIL.md` | Form, Sprache, verbotene Floskeln, Pflicht-Frontmatter. |
| `content/posts/` | Die Eintraege. |
| `layouts/` | Eigenes Layout, kein externes Theme. |
| `layouts/partials/stil.html` | Das gesamte CSS, inline im Kopf. Einzige Quelle der Gestaltung. |
| `static/schriften/` | Die beiden Schriften, selbst gehostet, samt `LIZENZ.txt` (SIL Open Font License). |
| `.github/workflows/hugo.yml` | Baut und veroeffentlicht bei Push auf `main`. |

## Arbeitsweise

1. Neuen Eintrag anlegen: `hugo new posts/mein-eintrag.md` (steht auf `draft: true`).
2. Schreiben lassen bzw. schreiben — gegen `CHARAKTER.md` und `STIL.md`.
3. Vorschau: `hugo server -D` → http://localhost:1313/dnd-tagebuch/
   (der Pfad `/dnd-tagebuch/` gehoert dazu, er steht als `baseURL` in `config.toml`)
4. Durchsehen, dann `draft: false` setzen.
5. `git push` — die Action baut und veroeffentlicht.

Entwuerfe (`draft: true`) werden nie veroeffentlicht: die Action baut ohne `--buildDrafts`.

## Gestaltung

Die Seite soll wie ein gebundenes Blatt in einem Ordensband wirken: getöntes
Papier mit Textur, doppelte Rahmenlinie, Initiale in Gold, römisch nummerierte
Siegel, Kapitälchen für Datum und Ort. Dunkelmodus ist dieselbe Seite bei
Fackelschein statt bei Tageslicht.

Alles Sichtbare hängt an einer Datei: `layouts/partials/stil.html`. Sie ist in
sechs Abschnitte geteilt (Schriften, Token, Grundgerüst, Typografie, Bausteine,
Zustände). Vier Regeln halten das zusammen:

1. **Farben, Abstände und Schriftgrade kommen aus den Token** in Abschnitt 2
   (`--tinte`, `--gold`, `--luft-3`, `--grad-brot` …). Keine losen Werte im
   übrigen CSS — sonst driften Hell- und Dunkelmodus auseinander, weil der
   dunkle Modus nur die Token neu belegt.
2. **Zwei Schriften, selbst gehostet:** Cinzel für Überschriften, Rubriken und
   Kapitälchen, EB Garamond für den Fließtext. Keine Verbindung zu Google, kein
   fremder Dienst im Ladepfad. Beide sind auf den benutzten Zeichenvorrat
   verkleinert (Latin-1 plus Typografie, rund 210 Zeichen); ein Zeichen darüber
   hinaus wird von einer Systemschrift ersetzt, statt zu fehlen.
3. **Kein JavaScript.** Eine Seite wiegt rund 7 KB, dazu einmalig 98 KB
   Schriften und Textur für die ganze Website.
4. **Barrierefreiheit ist Teil der Gestaltung, nicht Nacharbeit:** jede
   Textfarbe erreicht gemessen mindestens 4,5:1 gegen ihren tatsächlichen
   Hintergrund (schlechtester Wert 5,3:1), jedes Bedienelement ist mindestens
   24 px hoch, der Tastaturfokus ist sichtbar (goldener Rahmen), und es gibt
   eine Sprungmarke zum Inhalt.

Wer etwas ändert: mit `hugo server -D` gegenprüfen, im Hell- **und** im
Dunkelmodus und einmal auf Telefonbreite.

### Woher Ort und Stimmung kommen

`ort` und `stimmung` aus dem Frontmatter sind Teil der Form dieses Tagebuchs.
Sie stehen in der Übersicht unter dem Titel und im Eintrag im Kopfdatenblock
(`layouts/_default/single.html`). Fehlt eines der Felder, entfällt es
ersatzlos — das Layout bricht nicht.

Die Nummer eines Eintrags (das Siegel, „VII") ist nicht im Frontmatter
hinterlegt, sondern wird aus der zeitlichen Reihenfolge berechnet
(`layouts/partials/nummer.html`). Ein später eingeschobener Eintrag nummeriert
alle folgenden automatisch um. Vorlesewerkzeuge bekommen die Ziffer, nicht die
römische Zahl.

### Texte, die nicht im Layout stehen

Untertitel, Geleitwort auf der Startseite, Kurzbeschreibung für Suchmaschinen
und die Zeile im Fuß liegen in `config.toml` unter `[params]`. Sie lassen sich
ändern, ohne ein Template anzufassen.

## Hugo-Versionen

Lokal ist Hugo 0.92 installiert (Ubuntu-Paket, 2023). Die Action baut mit einer
neueren, festgenagelten Version. Lokal ist Vorschau, die Action ist die Wahrheit.
