#!/bin/bash

SUBSCRIBER_EMAIL=$1
STATUSPAGE_API_KEY=$2
STATUSPAGE_PROJECT=$3

SUBSCRIBER_ID=$(curl -s \
  -H "Authorization: OAuth $STATUSPAGE_API_KEY" \
  https://api.statuspage.io/v1/pages/$STATUSPAGE_PROJECT/subscribers.json | \
  jq -r ".[] | select(.email==\"$SUBSCRIBER_EMAIL\") | .id")

echo "Deleting $SUBSCRIBER_EMAIL"

curl -s \
  -H "Authorization: OAuth $STATUSPAGE_API_KEY" \
  https://api.statuspage.io/v1/pages/$STATUSPAGE_PROJECT/subscribers/$SUBSCRIBER_ID.json \
  -X DELETE

