#!/usr/bin/env bash
set -euo pipefail
: "${API:?Set API endpoint}"
: "${TOKEN:?Set auth token}"
: "${ORDER_ID:?Set target order id}"
curl -s "$API" -H "content-type: application/json" -H "authorization: $TOKEN" --data '{"action":"pay","order-id":"'"$ORDER_ID"'"}' &
curl -s "$API" -H "content-type: application/json" -H "authorization: $TOKEN" --data '{"action":"update","order-id":"'"$ORDER_ID"'","quantity":5}' &
wait
