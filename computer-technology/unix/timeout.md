# `timeout`
Runs a command and kills it if it takes more than a specified amount of seconds to execute:

### Examples
```
timeout 1 sleep 2
```

Will result in an error

```
timeout 2 sleep 1
```

Will suceed (return 0)
