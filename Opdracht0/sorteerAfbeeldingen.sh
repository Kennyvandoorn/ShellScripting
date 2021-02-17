#!/usr/bin/env bash
# Wordt aangeroepen met sudo ./sorteerAfbeeldingen.sh bestanden/
mkdir ./Afbeeldingen;
for foto in $1*.png $1*.jpg; do
    sudo mv "$foto" ./Afbeeldingen;
done
