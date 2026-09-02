# PKI, DNSSEC, and secure communications

## PKI / TLS
An OpenSSL-based CA issued X.509 certificates used to secure web services. The ADC handled certificate association and TLS termination. Private keys are intentionally excluded from this repository.

Example validation:

```bash
openssl s_client -connect www.example.net:443 -servername www.example.net
```

## DNSSEC
BIND DNSSEC cryptographically signed DNS data. Validation used:

```bash
dig +dnssec example.net
```

A correctly served signed zone should include records such as `RRSIG`.

## Email authentication
SPF defined authorized senders, DKIM provided cryptographic message signing, and DMARC established policy/alignment expectations. S/MIME extended certificate-based trust to Exchange users for signing/encryption.
