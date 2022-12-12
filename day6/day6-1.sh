#!/bin/bash
input="/home/kimbjork/lvls/adventcode22/day6/input.txt"

value=`cat $input`
i=4
four=${value:0:4}

while [[ i -lt ${#value} ]]; do
	char=${value:i:1}
	four="$four$char"
	four=${four:1:4}

	repete=0
	for (( k = 0; k < 4; k++ )); do
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
