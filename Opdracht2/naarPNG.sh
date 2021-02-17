#! usr/bin/env bash
# Wordt aangeroepen door ./naarPNG.sh MAPNAAM/
for foto in $1*.jpg; do
    convert "$foto" -resize 128x128\> "${foto%.*}.png";
done