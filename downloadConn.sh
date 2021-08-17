#!/bin/bash

echo "Please enter start Harbour (Code):"
read dep
dep=${dep^^}

echo "Please enter destination Harbour (Code):"
read dest
dest=${dest^^}

echo "Please enter starting date for search (yyyy-mm-dd):"
read dateStart

echo "Please enter end date for search (yyyy-mm-dd):"
read dateEnd

let days=($(date +%s -d $dateEnd)-$(date +%s -d $dateStart))/86400
let timestampStart=$(date +%s -d $dateStart)
#echo $days
let i="0"
let date

while [ $i -le $days ]
do
    date="$(date -d @$(($timestampStart + ($i * 86400))) "+%Y-%m-%d")"
    #echo $date
    wget "https://www.colorline-cargo.com/api/sailings/timetables?from=${dep}&to=${dest}&date=${date}" -O "timetable.${dep}-${dest}.${date}.json"
    ((i++))
done