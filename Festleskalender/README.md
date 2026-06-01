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

## Recherche-Methodik (bewährt, Stand 2026-05-31)

Vorgehen für Datums-Verifikation (siehe `logs/Recherche_2026-05-31.md`):

1. **Monat für Monat** prüfen – je Monatsblock ein abgeschlossener Rechercheauftrag, parallelisierbar.
2. **Quellen-Hierarchie:** (1) offizielle Veranstalter-Domain → (2) Stadt-/Tourismusseite → (3) seriöse Portale/Presse. Aggregatoren (allevents, regioactive, eventfinder) nur als Hinweisgeber, nie als alleinige Quelle.
3. **Wochentag-Logik als Plausibilitätstest:** Viele Feste folgen einem festen Muster ("1. Samstag im Juni", "2. Samstag nach Pfingsten", "letztes Juni-Wochenende Fr–Mo"). Stimmt der Wochentag des Kalenderdatums zum Muster?
4. **Vorjahresfalle:** Aggregatoren zeigen oft noch den Vorjahrestermin. Immer prüfen, ob die Quelle ausdrücklich das Zieljahr nennt.
5. **Zwei-Quellen-Regel bei Abweichung** vor dem Eintrag "Abweichung".
6. **Namens-/Ortsverwechslung** mitdenken (gleichnamige Parallelformate am selben Ort).
7. **JS-gerenderte Stadtseiten** liefern bei reinem Abruf oft keinen Text → Datum über Suchtreffer/Wochentag verifizieren, Zuverlässigkeit auf *mittel* setzen.

## Veröffentlichung (GitHub)

Der Festleskalender wird über **GitHub** veröffentlicht (kein Obsidian Publish).

- **Single Source of Truth:** die Markdown-Dateien (`Festleskalender_2026.md` + `feste/*.md`).
- **Generierte Artefakte:** `Festleskalender_2026.html` (responsive Eigenbau-Template: Desktop-Tabelle + Mobile-Karten) und `Festleskalender_2026.pdf`. Diese werden **aus dem Markdown erzeugt** und sind NICHT automatisch aktuell.
- **Regel:** Nach jeder inhaltlichen Änderung am Markdown muss die **HTML (und ggf. PDF) neu generiert** und anschließend **nach GitHub committet/gepusht** werden. Erst dann ist die Online-Version aktuell.
- **Wichtig:** iCloud-Sync ≠ online. Live ist nur, was auf GitHub gepusht wurde.
- Das `.git`-Repo liegt im Vault-Stamm (eine Ebene über diesem Ordner) – aus der Cowork-Sandbox ist nur der Unterordner `Festleskalender` sichtbar, **Git-Push erfolgt daher von Bernhards Mac** (z.B. via VS Code).

> **Stand 2026-05-31:** HTML und PDF datieren noch vom 18.05. und enthalten die Korrekturen vom 31.05. **noch nicht** → vor dem nächsten Push neu generieren.

## Konventionen

- Datumsformat: ISO `YYYY-MM-DD`
- Kategorien: kleinbuchstaben, mehrere möglich
- Quellen werden mit URL und Zugriffsdatum protokolliert
- Bei Wissenslücken: Status `erwartet` + Hinweis im Frontmatter
