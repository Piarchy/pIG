#!/bin/sh
# Author : Piaa

t=0
input=y

while [ "$input" == "y" ]
do
echo "Roll the dice? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
       DIFF=$((6-1+1))
R=$(($(($RANDOM%$DIFF))+1))
echo "Rolled : $R"
t=`expr $R + $t`
echo "Total score : $t"
else
        echo "Total score : $t"
fi


while [ "$R" == "1" ]
do
echo you lost bruh 
R=822
sleep 1
clear
echo "Score before death : $t Better luck next time"
t=0
done
done

