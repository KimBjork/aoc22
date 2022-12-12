#!/bin/bash

m0=(92 73 86 83 65 51 55 93)
m1=(99 67 62 61 59 98)
m2=(81 89 56 61 99)
m3=(97 74 68)
m4=(78 73)
m5=(50)
m6=(95 88 53 75)
m7=(50 77 98 85 94 56 89)

rounds=20

m0insp=0
m1insp=0
m2insp=0
m3insp=0
m4insp=0
m5insp=0
m6insp=0
m7insp=0

for (( i = 0; i < $rounds; i++ )); do
	for item in "${m0[@]}";do
		worry0=$(($item*5))
		divWorry0=$(($worry0/3))
		if (( $divWorry0 % 11 == 0 )); then
		    m3+=($divWorry0)
		else
		    m4+=($divWorry0)
		fi
		m0=("${m0[@]:1}")
		((m0insp++))
	done

	for item in "${m1[@]}";do
		worry1=$(($item*$item))
		divWorry1=$(($worry1/3))
		if (( $divWorry1 % 2 == 0 )); then
		    m6+=($divWorry1)
		else
		    m7+=($divWorry1)
		fi
		m1=("${m1[@]:1}")
		((m1insp++))
	done

	for item in "${m2[@]}";do
		worry2=$(($item*7))
		divWorry2=$(($worry2/3))
		if (( $divWorry2 % 5 == 0 )); then
		    m1+=($divWorry2)
		else
		    m5+=($divWorry2)
		fi
		m2=("${m2[@]:1}")
		((m2insp++))
	done

	for item in "${m3[@]}";do
		worry3=$(($item+1))
		divWorry3=$(($worry3/3))
		if (( $divWorry3 % 17 == 0 )); then
		    m2+=($divWorry3)
		else
		    m5+=($divWorry3)
		fi
		m3=("${m3[@]:1}")
		((m3insp++))
	done

	for item in "${m4[@]}";do
		worry=$(($item+3))
		divWorry=$(($worry/3))
		if (( $divWorry % 19 == 0 )); then
		    m2+=($divWorry)
		else
		    m3+=($divWorry)
		fi
		m4=("${m4[@]:1}")
		((m4insp++))
	done

	for item in "${m5[@]}";do
		worry=$(($item+5))
		divWorry=$(($worry/3))
		if (( $divWorry % 7 == 0 )); then
		    m1+=($divWorry)
		else
		    m6+=($divWorry)
		fi
		m5=("${m5[@]:1}")
		((m5insp++))
	done

	for item in "${m6[@]}";do
		worry=$(($item+8))
		divWorry=$(($worry/3))
		if (( $divWorry % 3 == 0 )); then
		    m0+=($divWorry)
		else
		    m7+=($divWorry)
		fi
		m6=("${m6[@]:1}")
		((m6insp++))
	done

	for item in "${m7[@]}";do
		worry=$(($item+2))
		divWorry=$(($worry/3))
		if (( $divWorry % 13 == 0 )); then
		    m4+=($divWorry)
		else
		    m0+=($divWorry)
		fi
		m7=("${m7[@]:1}")
		((m7insp++))
	done
done

echo "Monkey0: ${m0[@]}"
echo "Monkey1: ${m1[@]}"
echo "Monkey2: ${m2[@]}"
echo "Monkey3: ${m3[@]}"
echo "Monkey4: ${m4[@]}"
echo "Monkey5: ${m5[@]}"
echo "Monkey6: ${m6[@]}"
echo "Monkey7: ${m7[@]}"

echo
echo "Inspected items"
echo "Monkey0: $m0insp"
echo "Monkey1: $m1insp"
echo "Monkey2: $m2insp"
echo "Monkey3: $m3insp"
echo "Monkey4: $m4insp"
echo "Monkey5: $m5insp"
echo "Monkey6: $m6insp"
echo "Monkey7: $m7insp"


