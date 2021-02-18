#!/usr/bin/env bash
# Wordt aangeroepen door ./maaklogin.sh passwordfile.txt
echo "Voer je gebruikersnaam in: ";
read username;

# echo $username;

if [ ! "$username" ]; then
    username=$(whoami);
    echo "Geen gebruikersnaam ingevuld, uw gebruikersnaam wordt: $username";
else
    echo "Uw gebruikersnaam: $username";
fi

echo "Voer uw wachtwoord in: ";
read wachtwoord1;
echo "Bevestig het het wachtwoord nogmaals: ";
read wachtwoord2;
maxpasslengte=8;

while [ "${wachtwoord1}" != "${wachtwoord2}" -o ! "${#wachtwoord2}" -ge "${maxpasslengte}" ]; do
    echo "Wachtwoorden zijn niet het zelfde, probeer het opnieuw";
    echo "Voer uw wachtwoord in: ";
    read wachtwoord1;
    echo "Bevestig het het wachtwoord nogmaals: ";
    read wachtwoord2;
done

md5hash=$(echo "${wachtwoord2}" | md5sum);
echo "${username}":"${md5hash}" >> $1;
echo "Uw wachtwoord is als MD5-hash opgeslagen in: $1";