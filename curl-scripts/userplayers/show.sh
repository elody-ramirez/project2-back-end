#!/bin/bash

curl --include "http://localhost:4741/userplayers/${ID}" \
  --header "Authorization: Token token=${TOKEN}"

echo
