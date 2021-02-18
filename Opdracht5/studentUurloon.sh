#!/usr/bin/env bash
# Wordt aangeroepen door ./studentuurloon
bool=true
while [ "$bool" == true ]; do
    echo "Hoeveel uur heb je gewerkt? ";
    read uren;
    echo "Wat is je uurloon? "
    read geld;
    totaal=$(($uren * $geld));
    printf "\n$uren uren werken levert jou €$totaal euro op.\n";
    
    if [ "${totaal}" -ge 500 ]; then
        printf "\nJij hebt echt veel gewerkt damn!\n \nDat verdiend een feestje!\n";
        printf "\nWil je ook een feestje? y/n: \n";
        read antwoord;
        if [ "${antwoord}" == "y" ]; then
            xdg-open https://bit.ly/2NE9iEe;
        else
            printf "Dan maar geen feestje :( \n";
        fi
    else
        printf "\nAlle kleine beetjes helpen, let's get this bread!";
    fi

    printf "\nTot de volgende keer! \n"

    bool=false;
done