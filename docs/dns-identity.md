# DNS and identity

Redundant BIND servers provided external DNS while Active Directory-integrated DNS handled internal name resolution and domain services. Domain clients used redundant domain controllers as DNS servers, with forwarding used for queries outside the internal namespace.

Reverse DNS and PTR records were important for both troubleshooting and mail infrastructure. Time synchronization was also configured because Active Directory, certificates, and mail systems depend on consistent clocks.
