# `activerehashing`
A configuration that enables re-hashing of keys every 100ms. It has minimal impact on the clients because the re-hashing occurs during downtime. Re-hasing releases memory taken by deleted keys (so I guess it sort of defrags?) but it's not recommended if you have stringent latency requirements or must support many concurrent clients.
