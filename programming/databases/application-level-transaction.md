# Application-level transactions
Most of the time, database [[acid]] guarantees are not enough for business applications since a "logical business transaction" might span several database transactions.

Spanning a database transaction over a business transaction is not practical, these can be arbitrarily long (such as separate web requests) and thus increase contention in [[2pl]] or the chances of being rolled-back in [[mvvc]].
