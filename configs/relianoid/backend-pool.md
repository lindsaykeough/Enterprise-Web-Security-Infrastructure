# ADC backend pool example

- Public name: `www.example.net`
- Public protocol: HTTPS
- TLS termination: ADC
- Backend protocol: HTTP

| Backend | Address | Port | Health check |
|---|---:|---:|---|
| web1 | 10.20.50.10 | 80 | HTTP |
| web2 | 10.20.50.11 | 80 | HTTP |

Expected behavior: both healthy backends receive traffic; an unhealthy backend is removed from rotation; a recovered backend returns after health checks pass.
