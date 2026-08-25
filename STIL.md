# Stil-Leitfaden

Gilt für jeden Eintrag, zusätzlich zum Charakterbogen. Der Schreib-Skill prüft
dagegen, BEVOR ein Eintrag abgegeben wird.

## Form

- **Länge:** 300–800 Wörter. Ein Abend, kein Roman.
- **Absätze:** kurz, 2–5 Sätze. Ein Gedanke je Absatz.
- **Einstieg:** mitten hinein — kein „Heute war ein ereignisreicher Tag".
- **Schluss:** ein offener Gedanke, eine Sorge oder ein Vorsatz. Nie eine Zusammenfassung.
- **Keine Überschriften im Fließtext.** Ein Tagebucheintrag ist kein Bericht.

## Sprache

- Aktiv statt Passiv. Konkret statt allgemein.
- Sinneseindrücke vor Erklärungen: erst wie es roch, dann was es bedeutete.
- Deutsche Umlaute (ä/ö/ü/ß), niemals ue/oe/ss-Ersatz.
- Dialog sparsam und nur, woran die Figur sich wörtlich erinnern würde.

## Verbotene Floskeln

„ereignisreich", „wie dem auch sei", „letztendlich", „nichtsdestotrotz",
„es sollte sich zeigen", „little did I know"-Vorausdeutungen jeder Art.

## Pflicht-Frontmatter je Eintrag

    ---
    title:  Kurzer Titel aus Sicht der Figur, keine Sitzungsnummer
    date:   YYYY-MM-DDTHH:MM:SS+02:00
    draft:  true
    tags:   [ort, person, thema]
    zeit:   Monat und Jahr der Spielwelt mit Jahreszählung, z. B. "Ches 1492 DR"
    ort:    Wo der Eintrag geschrieben wurde
    stimmung: Gemütslage in zwei bis drei Worten
    ---

`date` ist die Sortierachse und wird nie angezeigt; sichtbar ist `zeit`. Tage
werden bewusst nicht geführt — im Spiel tragen sie nichts, und der Text sagt
ohnehin „gestern" und „am Morgen" statt eines Datums. Ein Rückblick, der nicht
in der laufenden Handlung liegt, trägt statt eines Monats das Wort „Rückblick";
wie lange er zurückliegt, legt das Tagebuch bewusst nicht fest.

Das „DR" (Dale Reckoning) gehört in die **Metadaten**, nie in den Fließtext:
Die Kopfzeilen sind die Rahmung der Chronik, dort ist die volle Jahresangabe
richtig. Thalion selbst schreibt „im Frühling des Jahres 1492" — wer in der Welt
lebt, erklärt seine Jahreszählung nicht. Denselben Grund hat es, dass der
Jahresname aus der Jahresrolle in den Metadaten steht und nicht im Text.

`draft: true` ist Vorgabe. Ein Eintrag wird erst nach deiner Durchsicht veröffentlicht.
