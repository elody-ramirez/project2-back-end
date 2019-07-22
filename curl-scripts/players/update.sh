#!/bin/bash

curl --include --request PATCH "http://localhost:4741/players/${ID}" \
  --header "Content-type: application/json" \
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
