# Combining `ZSET`s
There are very useful operations to merge `ZSET`s in ways that allow us to manipulate scores usefully. These can be used with `ZINTERSTORE` and `ZUNIONSTORE` and include:

* Choosing max score of operands
* Choosing the minimum score
* Multiplying the scores of all members of an operand by some *weight*
* Getting scores from other structures such as [[redis/hash-set]]s

It's important to note that only `*STORE` operations exist on sorted sets, that is, contrary to sets, no operations that give the result immediately exist, only those that store the result in anoter `ZSET`.

==TODO: Add some examples as I think this has a particularly unique syntax==
