#! usr/bin/env bash
# Wordt aangeroepen door ./voerUit.sh bestanden/BESTANDSNAAM.py/sh/cc
case "$1" in
        *sh)
            bash $1 ;;
        *cc)
            cat $1 ;;
        *py)
            python3 $1;;
        *)
            echo $"Vul een bestand in met een ondersteund bestandstype"
            exit 1
esac