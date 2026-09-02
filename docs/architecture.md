# Architecture and security zones

The environment connected headquarters and a remote site while separating public-facing services from internal identity and application infrastructure.

- **Outer DMZ:** authoritative BIND DNS, Postfix relay, ADC
- **Inner DMZ:** AD DS/DNS, Exchange, Apache backends, proxy, CA
- **HQ / Remote:** Windows client networks
- **pfSense:** routing, NAT, and policy enforcement between zones

Public SMTP terminated at Postfix rather than directly at Exchange, and public web traffic terminated at the ADC before reaching backend web servers. Internal clients used domain controllers for internal DNS and authentication.
