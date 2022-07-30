# Blocking List Operations
Redis has blocking operations on lists that allow using them as message queues. They work as follows:
* If a value is readily available in the list, then the operation is run immediately.
* If no such value is present, then the command blocks until a value is available or a timeout happens.

These commands are:
* `BLPOP «key-name» [«other-key-name» ...] «timeout in seconds»`: Pop from the left of the list or block
* `BRPOP «key-name» [«other-key-name» ...] «timeout in seconds»`: Pop from the right of the list or block
* `BRPOPLPUSH «source-key» «destination-key» «timeout in seconds»`: Pop from the right of `«source-key»` and push to the on the left of `«destination-key»`, blocking on `«source-key»` if empty.

When using several lists as a parameter, the command pops from the first one that has an available value.

