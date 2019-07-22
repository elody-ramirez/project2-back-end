#!/bin/bash

curl "http://localhost:4741/players" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "player": {
      "name": "'"${NAME}"'",
      "rating": "'"${RATING}"'",
      "position": "'"${POSITION}"'",
      "height": "'"${HEIGHT}"'",
      "team": "'"${TEAM}"'"
    }
  }'

echo
