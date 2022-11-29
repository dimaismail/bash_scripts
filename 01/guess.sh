#!/usr/bin/bash
#ya budu sohranyat svoyo chislo v  pamyati ot 0 do 99 randomno
moyo_chislo=$(( RANDOM % 100 )) 
#  (( moyo_chislo = RANDOM  % 100 ))  v etom sintaksise ne nado bespokoitsya  o probelax

echo  "//////////////////////////////////////////"
echo "////////// Ugaday chislo /////////////////"
echo "/////////////////////////////////////////"
echo  " "
echo " Vivedite vashu chislo: "

#dadim emu 10 chasnov
chansov=10

while [ $chansov -gt 0 ]
do

#chteniye vvoda (stdin-obichna eto budet klaviatura esli polzovatel ne napravil) i soxraneniye ee v peremennoy
# read - etim operatorom mi budem soxranyat v ego_chislo
read ego_chislo

#zatem mi sravnivayem nashi chisla
if [ $moyo_chislo -eq $ego_chislo ]
then
echo "******** URAA! Vi ugadali. Nashe chislo bilo ${moyo_chislo}-om ********"
#viydi
break
elif [ $moyo_chislo -gt $ego_chislo ] ;then
echo " :( O net, moyo chislo bolshe"
else
echo " ;( O net, moyo chislo menshe"
fi

(( chansov = chansov - 1 ))

done

if [  $chansov  -eq 0 ] 
then 
echo " vi ispolzovali vse shansi "
fi
