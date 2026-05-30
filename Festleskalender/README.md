# Festleskalender – Pflegelogik

## Zweck
Sammlung von Festen, Märkten und Veranstaltungen im Freien rund um **Remseck**, Anfahrt **≤ 60 min**. Kriterien: draußen, etwas zum Rumlaufen, besonderes Essen, etwas zu sehen.

## Struktur

```
Festleskalender/
├── README.md                       Diese Datei: Konventionen
├── Festleskalender_2026.md         Hauptdatei: chronologische Tabelle aller Feste 2026
├── feste/                          Eine .md je Fest mit YAML-Frontmatter
├── quellen/Quellen.md              Quellenliste mit letzter Prüfung
├── logs/Recherche_YYYY-MM-DD.md    Was wurde wann recherchiert, was neu, was bestätigt
└── archiv/                         Originaldateien, Vorjahresversionen
```

## YAML-Frontmatter (je Fest-Note)

```yaml
---
titel: "Markgröninger Schäferlauf"
datum_von: 2026-08-21
datum_bis: 2026-08-24
ort: "Markgröningen"
fahrzeit_min: 20
kategorie: [traditionsfest, jahrmarkt]   # mittelaltermarkt | weinfest | weihnachtsmarkt | strassenfest | gartentage | volksfest | konzert | sonstiges
status: bestätigt                         # bestätigt | erwartet | pausiert | abgesagt
url: "https://www.markgroeningen.de/..."
quelle: "stadt-markgroeningen.de"
geprüft_am: 2026-05-18
zuverlässigkeit: hoch                     # hoch | mittel | niedrig
eintritt: "frei"
tags: [traditionsfest, sommer]
hinweis: ""
---
```

## Hauptdatei-Spalten

| Datum | Fest | Ort | Fahrzeit | Status | Zuverl. | Link |

Sortiert chronologisch. Pausierte Feste am Ende mit Nächstem-Datum-Hinweis.

## Pflege-Workflow

1. **Jährlich (Februar/März):** komplettes Update aller Bestände auf neues Jahr
2. **Monatlich (Sonntag der letzten KW):** Stichprobenprüfung kommender 6 Wochen
3. **Neue Quelle gefunden:** in `quellen/Quellen.md` ergänzen, beim nächsten Update mitlesen

## Konventionen

- Datumsformat: ISO `YYYY-MM-DD`
- Kategorien: kleinbuchstaben, mehrere möglich
- Quellen werden mit URL und Zugriffsdatum protokolliert
- Bei Wissenslücken: Status `erwartet` + Hinweis im Frontmatter
