#! usr/bin/env bash
# Wordt aangeroepen door ./chechStatus MAPNAAM/ COMMANDO LOGBESTAND.TXT
for bestand in $1*; do
    if $2 "$bestand"; then
        echo "$Bestand uitvoeren via $2 succesvol" >> "$3";
    else
        echo "$bestand uitvoeren via $2 onssuccesvol" >> "$3";
    fi
done
   