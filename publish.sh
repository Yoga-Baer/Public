#!/bin/bash
# publish.sh - Veröffentlicht den Festleskalender auf GitHub Pages
# Aufruf: ./publish.sh [optionale Commit-Nachricht]

set -e

# Ins Vault-Verzeichnis wechseln (egal von wo das Skript aufgerufen wird)
cd "$(dirname "$0")"

# Prüfen, ob es etwas zu commiten gibt
if [[ -z $(git status --porcelain) ]]; then
    echo "✅ Nichts zu veröffentlichen – alles ist bereits aktuell."
    exit 0
fi

# Status anzeigen
echo "📝 Änderungen erkannt:"
git status --short
echo ""

# Commit-Nachricht: Argument oder Default mit Datum
MSG="${1:-Update Festleskalender ($(date +%Y-%m-%d\ %H:%M))}"

# Stage, Commit und Push
git add .
git commit -m "$MSG"
echo ""
echo "🚀 Push zu GitHub..."
git push

echo ""
echo "✅ Veröffentlicht!"
echo "🌐 Online verfügbar unter: https://yoga-baer.github.io/Public/"
