# Tagebuch

Statische Seite (Hugo), veroeffentlicht ueber GitHub Pages.

## Aufbau

| Datei / Ordner | Zweck |
|---|---|
| `CHARAKTER.md` | Wer das Tagebuch fuehrt: Stimme, Wissensgrenze, Namen. **Eingabe fuer den Schreib-Skill, keine Rollenanweisung.** |
| `STIL.md` | Form, Sprache, verbotene Floskeln, Pflicht-Frontmatter. |
| `content/posts/` | Die Eintraege. |
| `layouts/` | Eigenes minimales Layout, kein externes Theme. |
| `.github/workflows/hugo.yml` | Baut und veroeffentlicht bei Push auf `main`. |

## Arbeitsweise

1. Neuen Eintrag anlegen: `hugo new posts/mein-eintrag.md` (steht auf `draft: true`).
2. Schreiben lassen bzw. schreiben — gegen `CHARAKTER.md` und `STIL.md`.
3. Vorschau: `hugo server -D` → http://localhost:1313
4. Durchsehen, dann `draft: false` setzen.
5. `git push` — die Action baut und veroeffentlicht.

Entwuerfe (`draft: true`) werden nie veroeffentlicht: die Action baut ohne `--buildDrafts`.

## Hugo-Versionen

Lokal ist Hugo 0.92 installiert (Ubuntu-Paket, 2023). Die Action baut mit einer
neueren, festgenagelten Version. Lokal ist Vorschau, die Action ist die Wahrheit.
