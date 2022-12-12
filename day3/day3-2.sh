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

declare -A lineList
bigz=91
totalPrio=0


while read -r line
do
	lineList+=( $line )
	if [[ ${#lineList[@]} == 3 ]]; then
		#echo $lineList[0]
		#echo $lineList[1]
		#echo $lineList[2]
		echo "hello"
	fi

done < "$input1"


echo $totalPrio