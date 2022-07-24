# `SRANDMEMBER` negative count returns non-unique matches
I'm mainly making this note because I find it to be really weird counterintuitive semantics.

`SRANDMEMBER «set» «count»` returns `«count»` random elements of the [[redis/set]] `«set»`. What's surprising is that if `«count»` is negative, the returned elements might not be distinct.

### Example
```
> SADD myset one two three
(integer) 3
> SRANDMEMBER myset 2
1) "one"
2) "two"
> SRANDMEMBER myset -2
1) "one"
2) "one"
```
