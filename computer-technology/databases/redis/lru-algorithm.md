# Redis' LRU algorithm
Redis' LRU algorithm is not exact: it does not simply evict the key that's been without use the longest. Instead, it samples a number of random keys (that's 5 by default) and deletes the one that's been unused the longest from them. This has some advantages:

* Mitigates a classic [[problem-with-lru|problem with LRU]] by adding a random component to it.
* It's more efficient since not so many keys must be examined to choose which to evict.

The number of samples Redis takes for eviction might be tuned with the `maxmemory-samples` configuration. A lower number of samples means a less precise algorithm, but an increase in speed.
