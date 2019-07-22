#!/bin/bash

curl --include "http://localhost:4741/userplayers" \
  --header "Authorization: Token token=${TOKEN}"

echo
