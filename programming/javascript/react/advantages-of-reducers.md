# Advantages of Reducers
==TODO: Merge this with "when to use reducers"==

* State-changing logic is centralized in the reducer, so you don't have to chase it all across the code.
* Actions are processed one at a time, so you don't have to reason about data races.
* Actions are plain javascript objects, so it's easy to serialize, log, replay, queue and store them.
