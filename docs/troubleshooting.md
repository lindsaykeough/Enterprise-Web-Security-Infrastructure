# Troubleshooting case studies

## Reverse DNS zone missing
The reverse zone was recreated with the correct network ID and AD-integrated zone type, then secure dynamic updates and PTR creation were revalidated.

## DNSSEC returned no RRSIG
`named.conf`, zone syntax, BIND logs, and the SOA serial were checked. The stale serial was corrected, BIND was reloaded, and `dig +dnssec` confirmed signed responses.

## OpenDKIM permission failure
The service could not access its signing-key directory. Correct service-account ownership resolved the startup failure; broad permissions alone were not the right fix.

## BIND failed after TXT-record changes
`named-checkzone` identified malformed SPF/DMARC syntax. After correction and serial update, BIND restarted normally.

The overall lesson was to validate configuration syntax and dependencies before restarting critical services.
