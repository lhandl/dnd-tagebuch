# Stil-Leitfaden

Gilt für jeden Eintrag, zusätzlich zum Charakterbogen. Der Schreib-Skill prüft
dagegen, BEVOR ein Eintrag abgegeben wird.

## Zwei Aufgaben — beide gelten

Dieses Tagebuch ist **kein reiner Stimmungstext**. Es ist zugleich der Anhaltspunkt, an
dem der Spieler und seine Mitspieler nachlesen, was geschehen ist. Daraus folgt eine
Pflicht, die der Ton nicht aufheben darf:

**Der Fortgang muss ersichtlich sein.** Wer wurde getroffen, was wurde herausgefunden,
was wurde beschlossen, was steht als Nächstes an. Namen von Personen und Orten fallen,
wo sie fallen müssen. Eine Erkenntnis, die die Gruppe gewonnen hat, steht im Eintrag —
nicht nur die Erschütterung darüber.

**Wichtige Auskünfte werden benannt, nicht angedeutet.** Wenn jemand der Gruppe etwas
Entscheidendes sagt, muss hinterher klar sein, *was* gesagt wurde. Andeutung ist ein
Stilmittel für Gefühle, nicht für Tatsachen.

Das steht **nicht** im Widerspruch zur Wissensgrenze: Was die Figur nicht wissen kann,
bleibt draußen. Aber was sie weiß, darf sie aufschreiben — und soll es, wenn es für den
weiteren Weg zählt. Im Zweifel gilt: Lieber ein Satz zu viel über die Sache als ein
Eintrag, aus dem drei Wochen später niemand mehr herausliest, was eigentlich geschah.

Der Ton bleibt ihrer — sie führt kein Protokoll. Aber ein Tagebuch, das nur Stimmung
enthält, hat seine halbe Aufgabe verfehlt.

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
    ort:    Wo der Eintrag geschrieben wurde (Freitext für die Kopfzeile)
    orte:   ["Baldurs Tor", "Die Katakomben unter dem Badehaus"] — Register-Begriffe
            für die Orte-Seite, ein bis zwei, aus der bestehenden Liste; ohne dieses
            Feld fehlt der Eintrag im Register
    stimmung: Gemütslage in zwei bis drei Worten
    ---

`orte` speist das Register „Orte" (Hugo-Taxonomie); `ort` ist nur Anzeige. Bestehende
Begriffe: Tiefwasser, Soubar, Baldurs Tor, Die Elfenlied-Taverne, Die Katakomben unter dem
Badehaus, Der Tempel des Tyr, Der Hafen von Baldurs Tor, Unterwegs nach Candlekeep, Candlekeep,
Traxigors Turm, An Bord (zwischen den Welten), Elturel, Die Hohe Halle, Die Katakomben unter
der Hohen Halle. Neue Begriffe sparsam und ohne ß in der Adresse (ß bleibt im Pfad stehen).

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
