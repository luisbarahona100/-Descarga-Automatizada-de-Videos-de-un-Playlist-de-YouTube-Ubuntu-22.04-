#!/bin/bash

# URL del playlist
PLAYLIST_URL="https://www.youtube.com/playlist?list=PL46X1WcXSqYEZiSEmsSMEhSiH91182q9K"

# Carpeta de salida
OUTPUT_DIR="$HOME/Documents/R10_Hacking/H1_DownloadYTvideos/playlist_download"
mkdir -p "$OUTPUT_DIR"

echo "Descargando los primeros 5 videos..."

yt-dlp \
    --playlist-start 1 \
    --playlist-end 5 \
    -f "bestvideo+bestaudio/best" \
    --merge-output-format mp4 \
    -o "$OUTPUT_DIR/%(playlist_index)s - %(title)s.%(ext)s" \
    "$PLAYLIST_URL"

echo "Descarga completada ✅"
