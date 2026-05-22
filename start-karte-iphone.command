#!/bin/zsh
cd "$(dirname "$0")"

PORT=4173
IP="$(ifconfig en0 | awk '/inet / { print $2; exit }')"

if [[ -z "$IP" ]]; then
  IP="$(ifconfig | awk '/inet 192\.168\.|inet 10\.|inet 172\.(1[6-9]|2[0-9]|3[0-1])\./ { print $2; exit }')"
fi

if [[ -z "$IP" ]]; then
  echo "Keine lokale WLAN-IP gefunden."
  echo "Bitte pruefen, ob der Mac im gleichen WLAN ist wie das iPhone."
  read -k 1 "?Taste druecken zum Schliessen..."
  exit 1
fi

URL="http://$IP:$PORT/index.html"

clear
echo "Gutschein-Karte ist gleich bereit."
echo
echo "Auf dem iPhone im gleichen WLAN diese Adresse in Safari oeffnen:"
echo
echo "  $URL"
echo
echo "Dann: Teilen-Symbol -> Zum Home-Bildschirm"
echo
echo "Dieses Fenster offen lassen, solange die Karte genutzt wird."
echo
python3 -m http.server "$PORT" --bind 0.0.0.0 &
SERVER_PID=$!
sleep 1
open "$URL" >/dev/null 2>&1
wait "$SERVER_PID"
