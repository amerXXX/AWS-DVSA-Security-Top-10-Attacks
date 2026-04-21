#!/usr/bin/env bash
set -euo pipefail
: "${API:?Set API endpoint}"
: "${TOKEN:?Set auth token}"
: "${ORDER_ID:?Set target order id}"
for i in $(seq 1 20); do
  curl -s "$API" \
    -H "content-type: application/json" \
    -H "authorization: $TOKEN" \
    --data '{"action":"pay","order-id":"'"$ORDER_ID"'"}' >/dev/null &
done
wait
