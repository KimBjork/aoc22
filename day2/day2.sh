#!/bin/bash
input="/home/kimbjork/lvls/adventcode22/day2/input2.txt"

#A X - Rock		- 1
#B Y - Paper	- 2
#C Z - Scissors	- 3

#   A B C
# X(3,0,6)
# Y(6,3,0)
# Z(0,6,3)

#   A B C
# X(4,1,7)
# Y(8,5,2)
# Z(3,9,6)

declare -A resultArray=([0,0]=4 [1,0]=1 [2,0]=7 [0,1]=8 [1,1]=5 [2,1]=2 [0,2]=3 [1,2]=9 [2,2]=6)
declare -A letterMap=( ["A"]=0 ["B"]=1 ["C"]=2 ["X"]=0 ["Y"]=1 ["Z"]=2)
totalSum=0

while read -r line
do
	fir=${line:0:1}
	sec=${line:2:1}

	xcord=${letterMap[$fir]}
	ycord=${letterMap[$sec]}
	val=${resultArray["$xcord","$ycord"]}
	totalSum=$(( $val + $totalSum ))
done < "$input"

echo $totalSum