#!/bin/bash
input1="/home/kimbjork/lvls/adventcode22/input-test.txt"
input="/home/kimbjork/lvls/adventcode22/day3/input3.txt"


#ASCII
#a-97
#z-122
#A-65
#Z-90

#Task
#a-1
#z-26
#A-27
#Z-52

bigz=91
totalPrio=0

while read -r line
do
	nrOfChars=${#line}
	firstHalf=${line:0:$nrOfChars/2}
	secondHalf=${line:$nrOfChars/2:$nrOfChars}

	for (( c=0; c<=$nrOfChars/2-1; c++ ))
	do
		letter=${secondHalf:$c:1}
		if [[ "$firstHalf" == *"$letter"* ]]; then
			asciiVal=$(printf "%d\n" "'$letter")
			if [[ asciiVal -lt bigz ]]; then
				prio=$(($asciiVal-38))
				totalPrio=$(($prio + totalPrio))
			else
				prio=$(($asciiVal-96))
				totalPrio=$(($prio + totalPrio))
			fi
		 	break
		fi
	done
done < "$input"

echo $totalPrio