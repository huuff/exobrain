# REdis Serialization Protocol (RESP)
RESP is the protocol one uses to communicate with Redis through TCP.RESP is text-based and human-readable, it's so easy to use that [[redis/telnet|it's trivial to use through telnet]].

In RESP, all lines are terminated by a CLRF `\r\n`. There are 5 basic types, and the type of a line is determined by its first byte:

* `+` indicates a simple string. This only contains Redis messages such as `+OK\r\n`.
* `-` signifies an error.
* `:` means that what follows is an integer
* `$` is a bulk string, that is, an actual response (e.g. the value of a key) as a string. `$` is immediately followed by the length of the string to ease parsing it. As a special case, a length of `-1` signifies that this is a null (`nil`) response.
* `*` indicates an array. It's immediately followed by the length of the array and each subsequent line is an element of it (which can be of any of the previous types). Similarly to bulk strings, an array length of `-1` means a `nil` response.
