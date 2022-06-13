---
tags: tip, pattern
---

# Use the `preStop` hook to do a graceful shutdown without dropping connections
Doing a [[rolling-update]] will just turn down instances with active connections to progress with the update. You can avoid this by using a `preStop` hook that waits until connections are over to shut down the instance. The `preStop` hook always runs before turning down the instance and it's syncrhonous, so the instance won't get shut down before the hook finishes.

### Example
```yaml
lifeCycle:
  preStop:
    exec:
      command: [ "/usr/sbin/nginx", "-s", "quit" ]
```
