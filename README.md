# Schlemmerblock

Kleine mobile Kartenansicht fuer den Schlemmerblock mit:

- zoombarer Karte auf Basis von Leaflet und OpenStreetMap
- Suche, Ortsfilter, Kategorien und Tag-Filter
- Besucht-Haken mit lokaler Speicherung im Browser
- GitHub-Pages-tauglicher `docs/`-Struktur

## Wichtige Dateien

- `index.html`: Hauptdatei fuer lokale Vorschau und Bearbeitung
- `docs/index.html`: GitHub-Pages-Einstieg
- `Schlemmerblock.html`: mitnehmbarer Einzeldatei-Stand
- `ANLEITUNG_IPHONE.md`: kurze iPhone-Anleitung
- `GITHUB_PAGES.md`: Veroeffentlichung ueber GitHub Pages

## Lokal starten

```sh
python3 -m http.server 4173
```

Dann im Browser:

`http://localhost:4173/index.html`
