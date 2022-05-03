---
tags: pattern
---

# Turning off a storage instance
I found this in the [[mastering-kubernetes]] book and didn't really know where to note it, but seems important to remember:

If you want to permanently turn off an instance that manages some important data, you might want to drain that data to other nodes before doing it, this involves two parts:
* Running a `lifecycle` `presStop` hook that drains all data before shutting down the [[pod]]
* Setting an appropriate `terminationGracePeriodSeconds`. Since this process might take some time to complete, you want to wait for it to run to completion before definitely shutting down the instance.

### Example
For a [[casandra]] instance, you run the `nodetool drain` to drain the data to other instances:

```yaml
lifecycle:
  preStop:
    exec:
      command:
        - /bin/sh
        - -c
        - nodetool drain
```

And also you want to set a long enough graceful shutdown period:

```yaml
terminationGracePeriodSeconds: 1800
```
