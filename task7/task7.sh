x=`curl $TASK_API/uso/part1/$SECRET_KEY` \
 progr="{\"secret_key\": \"$SECRET_KEY\",\"token\": \"$x\"}"
curl -X POST $TASK_API/uso/part2 \
  -H 'Content-Type: application/json' \
  -d "$progr"

