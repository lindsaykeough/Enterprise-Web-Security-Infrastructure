# Web services and availability

Two Linux Apache servers provided redundant backend content. A Relianoid Application Delivery Controller published the service, distributed requests across backends, performed health checks, and supported failover.

Tinyproxy provided centralized HTTP proxying, with pfSense NAT redirecting intended traffic through the proxy.

Validation included backend service health, ADC health checks, request distribution, simulated backend failure, and HTTPS reachability through the intended firewall path.
