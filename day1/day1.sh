#!/bin/bash
input="/home/kimbjork/lvls/adventcode22/day1/input1.txt"
maxSum=10000000000
currentMax=0
workingSum=0
totalSum=0


for i in 1 2 3 
do
  while read -r line
  do
    if [ -z "$line" ];
    then
      if [[ workingSum -gt currentMax && workingSum -lt maxSum ]];
      then
        currentMax=$workingSum
      fi
      workingSum=0
    fi

    workingSum=$(( $line + $workingSum ))
  done < "$input"
  echo "$i th max: $currentMax"
  maxSum=$currentMax
  totalSum=$(( $currentMax + $totalSum ))
  currentMax=0
done
echo $totalSum
