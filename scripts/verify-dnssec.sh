#!/usr/bin/env bash
set -euo pipefail
DOMAIN="${1:-example.net}"
DNS_SERVER="${2:-}"
command -v dig >/dev/null || { echo "dig is required"; exit 1; }
if [[ -n "$DNS_SERVER" ]]; then
  dig @"$DNS_SERVER" +dnssec "$DOMAIN" SOA
else
  dig +dnssec "$DOMAIN" SOA
fi
echo "Review the response for the expected signed-zone/RRSIG data."
