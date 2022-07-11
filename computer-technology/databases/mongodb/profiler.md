# Profiler
The profiler is very easy to debug performance issues in the cluster, with the downside that having it enabled will slow overall cluster performance, so it should only be enabled when needed. You can check the recorded data in the `system.profile` collection.

By default it is off and you can enable it with

```js
db.setProfilingLevel(«level»)
```

The `«level»` can be one of:
* `2`: Just profile everything
* `1`: Only profile slow operations, the second argument passed to the function is the [[slowms]]. For example `db.setProfilingLevel(1, 500)` records any operations that take 500 milliseconds or more.
* `0`: Disables profiling.
