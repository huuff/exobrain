# The problem with LRU
Pure LRU caches don't take into account the frequency of usage, so if the maximum memory for the cache is not very high, least frequently used keys might evict the most used ones (which are bound to get cached again soonish), and thus, increase the I/O accesses of the cache to disk.
