#!/usr/bin/env bash
set -euo pipefail
URL="${1:-https://www.example.net}"
curl -I --fail --show-error "$URL"
HOST="$(printf '%s' "$URL" | sed -E 's#^https?://##; s#/.*##')"
echo | openssl s_client -connect "${HOST}:443" -servername "$HOST" 2>/dev/null | openssl x509 -noout -subject -issuer -dates
