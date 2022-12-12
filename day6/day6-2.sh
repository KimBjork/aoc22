#!/bin/bash
input="/home/kimbjork/lvls/adventcode22/day6/input.txt"

value=`cat $input`
nrofunique=14

i=$nrofunique
four=${value:0:nrofunique}


while [[ i -lt ${#value} ]]; do
	char=${value:i:1}
	four="$four$char"
	four=${four:1:nrofunique}

	repete=0
	for (( k = 0; k < nrofunique; k++ )); do
		currchar=${four:k:1}
		occurences=`grep -o ${currchar} <<<"$four" | grep -c .`

		if [[ occurences -gt 1 ]]; then
			repete=1
			break
		fi
	done

	if [[ repete -eq 0 ]]; then
		((i++))
		echo "done $i: $four"
		break
	fi

	((i++))
done
