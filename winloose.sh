#!/bin/bash -x
declare -A Dictionary
is_Win=1
is_Loose=0
value=0
needtorun=true
winchances=0
loosechances=0
winpercentage=0

calc() { awk "BEGIN{print $*}";}
while [ $needtorun == true ]
do
     value=$((((RANDOM))%2))
if [ $value -eq $winchances ]
then
     winchances=$(($winchances+1))
     Dictionary["win"]=$winchances
else
   loosechances=$(("$loosechances+1"))
  Dictionary["Loose"]=$loosechances
fi
read -p "do you want to continue.press y to yes n to no " checkcondition
checkcondition=${checkcondition, ,}
if [ "$checkcondition" != "y" ]
then
needtorun=false
fi
done
winchance= calc $winchances/$(($winchances+$loosechances))
winpercentage=$(echo 100 $winchances | awk '{ print "%f", $1 * $2}')
echo $winchances
