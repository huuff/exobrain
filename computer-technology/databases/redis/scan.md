# `SCAN`
This commands allows us iterating through the key set by providing an optional pattern to match and amount of elements to look, the syntax is:

```
SCAN «slot» [MATCH «glob pattern»] [COUNT «count»]
```
Some notes on it:

* The `MATCH` subsection takes a [[unix/globbing|glob pattern]].
* To start a scan from the beginning, use the slot `0`.
* The first value a scan returns is the next slot you should use to keep searching.
* This is more efficient than the `KEYS` command, since it doesn't block the entire database until it has scanned all keys (though it blocks until this scan iteration is over)

### Example
```
SCAN 0 MATCH user:1* COUNT 10000
1) "1229"
2) 1) "user:1500"
   2) "user:1000"
```
