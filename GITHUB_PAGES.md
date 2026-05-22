# Schlemmerblock als GitHub Page

Der iPhone-Dateiweg ist unzuverlaessig, wenn `.html` mit AnyDesk verknuepft ist. Der robuste Weg ist eine kleine Webseite:

1. Auf github.com ein neues Repository erstellen, z. B. `schlemmerblock`.
2. Die Datei `docs/index.html` in dieses Repository hochladen.
3. Im Repository zu `Settings` -> `Pages` gehen.
4. Unter `Build and deployment` einstellen:
   - Source: `Deploy from a branch`
   - Branch: `main`
   - Folder: `/docs`
5. Speichern.

Danach zeigt GitHub eine Adresse wie:

`https://BENUTZERNAME.github.io/schlemmerblock/`

Diese Adresse auf dem iPhone in Safari oeffnen und dann:

`Teilen` -> `Zum Home-Bildschirm`

Die Besucht-Haken werden auf dem iPhone lokal im Safari-Speicher fuer genau diese URL gespeichert.
