#!/bin/bash
#input="/home/kimbjork/lvls/adventcode22/input-test.txt"
input="/home/kimbjork/lvls/adventcode22/day4/input.txt"


#20-93,57-92

total=0

while read -r line
do
	IFS=','
	read -a pair <<< $line

	IFS='-'
	read -a first <<< ${pair[0]}
	read -a second <<< ${pair[1]}

	if [[ ${first[0]} -ge ${second[0]} ]] && [[ ${first[1]} -le ${second[1]} ]]; then
		#echo $line
		((total++))
	else
		if [[ ${second[0]} -ge ${first[0]} ]] && [[ ${second[1]} -le ${first[1]} ]]; then
			#echo $line
			((total++))
		fi
	fi
done < "$input"

echo $total