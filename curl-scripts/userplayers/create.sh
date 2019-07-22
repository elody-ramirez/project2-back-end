#!/bin/bash

curl "http://localhost:4741/userplayers" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "userplayer": {
      "user_id": "'"${USER_ID}"'",
      "player_id": "'"${PLAYER_ID}"'"
    }
  }'

echo
