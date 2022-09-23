# Ossification
Ossification is a natural (societal?) process where many deployed proxies (middle-boxes) that are around the internet and try to act upon networking information that passes through them, for example:

* Changing packets to aid in some process
* Caching
* Firewalling

As these boxes get outdated (or just are wrongly configured) they might prevent legitimate traffic, especially from newer protocols. For example, if you were to invent a new TCP/UDP protocol alternative, you'd have it hard to make it go anywhere, since middle-boxes would hamper it.

A common solution to this problem is to encrypt as much traffic as possible so middle boxes are unable to act on it.
