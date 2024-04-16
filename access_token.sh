#!/bin/bash

URL="https://api.peviitor.ro/v5/add/"
EMAIL="david.mondoc@gmail.com"


ACCESS_TOKEN=$(curl -X POST -H "Content-Type: application/json" -d '{"email": "'$EMAIL'"}' $URL)

export TOKEN=$(jq -r '.access' <<< $ACCESS_TOKEN)

echo $TOKEN

