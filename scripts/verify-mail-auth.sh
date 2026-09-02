#!/usr/bin/env bash
set -euo pipefail
DOMAIN="${1:-example.net}"
SELECTOR="${2:-mail}"
command -v dig >/dev/null || { echo "dig is required"; exit 1; }
echo "SPF:"; dig +short TXT "$DOMAIN"
echo "DMARC:"; dig +short TXT "_dmarc.$DOMAIN"
echo "DKIM:"; dig +short TXT "$SELECTOR._domainkey.$DOMAIN"
