# CLAUDE.md – Anleitung für KI-Assistenten

> Diese Datei wird von Claudian (Obsidian) und Claude Code (CLI) automatisch beim Start gelesen.
> Sie enthält alles, was du wissen musst, um diesen Vault sinnvoll zu unterstützen.

## Was ist dieser Vault?

Ein öffentlicher Obsidian-Vault namens **"Public"**, der über **GitHub Pages** ins Internet veröffentlicht wird.

- **Eigentümer:** Bernhard Klotz (bernhard.klotz@msg.group)
- **GitHub-Repo:** https://github.com/Yoga-Baer/Public
- **Live-URL:** https://yoga-baer.github.io/Public/
- **Zielgruppe:** Öffentlich, aber primär für die Familie (Frau)

## Hauptinhalt: Festleskalender

Der Vault enthält den **Festleskalender 2026** – eine kuratierte Sammlung von Festen, Märkten und Veranstaltungen rund um Remseck (≤ 60 min Anfahrt).

- `Festleskalender/Festleskalender_2026.html` – **Die zentrale Ausgabe-Datei** (was deine Frau sieht)
- `Festleskalender/Festleskalender_2026.md` – Markdown-Hauptdatei
- `Festleskalender/feste/*.md` – Einzelne Feste mit YAML-Frontmatter
- `Festleskalender/README.md` – Pflegelogik, Konventionen, Frontmatter-Format

## Publish-Workflow (WICHTIG!)

Es gibt ein fertiges Skript für die Veröffentlichung:

```bash
./publish.sh                          # Standardnachricht mit Zeitstempel
./publish.sh "Eigene Commit-Nachricht"
```

Das Skript:
1. Prüft, ob es Änderungen gibt
2. `git add . && git commit && git push`
3. Bestätigt mit der Live-URL

**Wenn der User sagt "veröffentliche" / "push" / "online stellen" → einfach `./publish.sh` ausführen.**

## Privatsphäre-Regeln (KRITISCH!)

Da das Repo öffentlich ist, gelten strikte Regeln:

- ⛔ **NIEMALS** Inhalte aus `**/privat/` oder Dateien mit `.privat.md` committen
- ⛔ **NIEMALS** persönliche Termine, Reisen, Familiennamen in öffentliche Dateien aufnehmen
- ✅ Die `.gitignore` schützt bereits `Festleskalender/privat/`, `**/privat/`, `*.privat.md`
- ✅ Vor jedem Commit prüfen, ob etwas Privates dabei ist – im Zweifel **nachfragen**

Die Git-History wurde bereits einmal bereinigt (`git filter-repo`), weil versehentlich Privattermine gepusht wurden. Das soll nicht nochmal passieren.

## Vault-Struktur

```
Public/                              <- Vault-Root + Git-Repo
├── CLAUDE.md                        <- Diese Datei
├── index.html                       <- GitHub-Pages-Startseite (Weiterleitung)
├── publish.sh                       <- Publish-Skript
├── .gitignore                       <- Schützt private Inhalte & Obsidian-Config
├── Festleskalender/
│   ├── README.md                    <- Pflegelogik, Konventionen
│   ├── Festleskalender_2026.html    <- DIE HTML, die geteilt wird
│   ├── Festleskalender_2026.md      <- Markdown-Hauptdatei
│   ├── Festleskalender_2026.pdf     <- PDF-Export
│   ├── feste/                       <- Einzelne Fest-Notizen (.md)
│   ├── html_feste/                  <- HTML-Versionen der Feste
│   ├── quellen/                     <- Quellenliste
│   ├── logs/                        <- Recherche-Logs
│   └── archiv/                      <- Vorjahresversionen
├── .obsidian/                       <- Obsidian-Config (gitignored)
└── .git/                            <- Git-Repo
```

## Häufige Aufgaben

| User sagt … | Du machst … |
|---|---|
| "veröffentliche" / "push" | `./publish.sh` ausführen |
| "neue Version der HTML ist da" | `./publish.sh "Neue Festleskalender-Version"` |
| "lösche XY" | Datei löschen, prüfen ob in Git-History, ggf. `./publish.sh` |
| "füge neues Fest hinzu" | Neue `.md` in `feste/` mit YAML-Frontmatter (siehe README) |

## Git-Setup

- **Remote:** `origin → https://github.com/Yoga-Baer/Public.git` (HTTPS)
- **Auth:** Personal Access Token, gespeichert im macOS Keychain
- **Branch:** `main`
- **GitHub Pages:** aktiviert, Source = `main` / `/ (root)`

## Konventionen für Antworten

- Sprache: **Deutsch** (User schreibt deutsch)
- Bei destruktiven Aktionen (löschen, force-push, History umschreiben): **immer nachfragen**
- Bei Privatsphäre-relevanten Aktionen: **doppelt prüfen**
- Vault-Pfade als Wikilinks: `[[Festleskalender/Festleskalender_2026]]`
