
#!/bin/bash
re='^[0-9]+$'
[[ $1 =~ $re ]] && temperatura="$1"
[[ $2 =~ $re ]] && temperatura="$2"
[[ $3 =~ $re ]] && temperatura="$3"
re='^[A-Z]+[a-z]+[-]*[A-Z]*[a-z]*$'
[[ $1 =~ $re ]] && oras="$1"
[[ $2 =~ $re ]] && oras="$2"
[[ $3 =~ $re ]] && oras="$3"
re='^[a-z]+$'
[[ $1 =~ $re ]] && vreme="$1"
[[ $2 =~ $re ]] && vreme="$2"
[[ $3 =~ $re ]] && vreme="$3"
ok1="0"
echo "$oras"
echo $oras $temperatura $vreme >> /home/student/tema3-scripts-output/weather.info
touch /home/student/tema3-scripts-output/live.info
while read line;
do
        if [[ "$oras" == $(echo "$line" | awk '{print $1}') ]]; then
        ok1="1"
        fi
done < /home/student/tema3-scripts-output/live.info

if [[ "$ok1" == "0" ]]; then
echo $oras $temperatura $vreme  >> /home/student/tema3-scripts-output/live.info
fi
if [[ "$ok1" == "1" ]]; then
sed -i "s/$oras .*/$oras $temperatura $vreme/g" /home/student/tema3-scripts-output/live.info
fi
