---
tags: how-to
---

# How to wait for sidecar container to stop
This is actually a deficiency of Kubernetes. Sometimes a [[sidecar]] is needed for the main container to work, but both are started at the same time and this makes the main container fail and be restarted. There are two traditional solutions:
- Just let it fail and be restarted until it works. But it troubles me seeing several restarts in a container that should be perfectly healthy, it's hard to know whether these are actual errors or just race conditions
- Use an script in the main container that waits for the sidecar to be started. But this requires the main container to be modified to be aware of the existence of a sidecar.

I found the solution through [this Marko Luksa's post](https://medium.com/@marko.luksa/delaying-application-start-until-sidecar-is-ready-2ec2d21a7b74). Containers are started sequentially, and the lifecycle post-start hook is waited to finish before starting the next one. Thus, a hacky solution is to put your sidecar first and something like:

```yaml
lifecycle:
  postStart:
    exec:
      command: [ "sleep", "360" ]

```
