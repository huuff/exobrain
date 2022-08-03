# Key Expiration
We can set an expiration time on a key (a whole key, not individual members of a set or hash, or anything of the like). Some useful commands for it are:

* `EXPIRE «key» «seconds to expiration»` to expire by seconds
* `PEXPIRE «key» «milliseconds to expiration»` to expire by milliseconds
* `EXPIREAT «key» «unix timestamp»` to expire at a specific time
* `TTL «key»` to get the time left on key
* `PERSIST «key»` to remove the expiration time
