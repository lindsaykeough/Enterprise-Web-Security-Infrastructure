# Sanitized firewall policy model

| Source | Destination | Service | Intent |
|---|---|---|---|
| Internet | Outer DMZ DNS | TCP/UDP 53 | Authoritative DNS |
| Internet | Postfix relay | TCP 25 | Public SMTP |
| Internet | ADC | TCP 443 | Public HTTPS |
| Postfix relay | Exchange | SMTP | Controlled internal relay |
| ADC | Apache backends | HTTP | Load-balanced application traffic |
| HQ / Remote | AD infrastructure | Required domain services | Identity/DNS |
| HQ / Remote | Proxy | TCP 8888 | Controlled proxy access |
| Private zones | Internet | Approved outbound | NAT-controlled egress |

Policy should be added incrementally with the smallest required source, destination, and service scope.
