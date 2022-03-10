#!/bin/bash
echo $@ >> /home/student/tema3-scripts-output/weather.info
ok1="0"
oras="$1"
echo "$oras"
touch /home/student/tema3-scripts-output/live.info
while read line;
do
	if [[ "$oras" == $(echo "$line" | awk '{print $1}') ]]; then
	ok1="1"
	fi 
done < /home/student/tema3-scripts-output/live.info

if [[ "$ok1" == "0" ]]; then
echo $@ >> /home/student/tema3-scripts-output/live.info
fi
if [[ "$ok1" == "1" ]]; then 
sed -i "s/$1 .*/$1 $2 $3/g" /home/student/tema3-scripts-output/live.info
fi
