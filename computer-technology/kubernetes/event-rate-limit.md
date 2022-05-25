# `EventRateLimit`
An [[admission-controller]] that can be used to specify hard limits for the API to prevent [[denial-of-service]] attacks. A configuration is provided through the API server through an `--admission-control-config-file` flag. It allows specifying a maximum number of QPS (Queries per second)

### Example configuration
```yaml
limits:
  - type: Namespace
    qps: 50
    burst: 100
    cacheSize: 200
  - type: Server
    qps: 10
    burst: 50
    cacheSize: 200
```
