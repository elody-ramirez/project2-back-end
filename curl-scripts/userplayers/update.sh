#!/bin/bash

curl --include --request PATCH "http://localhost:4741/userplayers/${ID}" \
  --header "Content-type: application/json" \
  --data '{
    "userplayer": {
      "user_id": "'"${USER_ID}"'",
      "player_id": "'"${PLAYER_ID}"'"
    }
  }'

echo
