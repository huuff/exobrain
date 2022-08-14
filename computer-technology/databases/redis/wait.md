# `WAIT`
A way to provide some sort of stronger [[consistency]] for Redis. `WAIT` makes the client wait until the previous commands it has sent are confirmed by a specific number of replicas before proceeding. The syntax is

```
WAIT «number of replicas» «maximum seconds to block»
```

You can also use `0` as the second parameter to block indefinitely
