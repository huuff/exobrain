# Sharding
Sharding is MongoDB's horizontal scaling solution. It consists of spreading the data across several servers, which gives benefits such as:

* More data can be stored, since more servers are storing it (more lower-end drives are cheaper than a single higher-end drive)
* Access to data is load-balanced, since data is spread across servers, access to it is also spread.
* Data can be put closer to the likely users, reducing latency. For example you might put all data pertaining to american users in servers in america, and thus it's faster to access for them.

MongoDB supports autosharding, abstracting the architectural concerns away from the developer and simplifying the database administration.
