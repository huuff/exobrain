# Pipelining
Pipelining was introduced in HTTP/1.1 to make more efficient use of connections: it allowed sending several successive requests without waiting for the responses. It promised performance improvements but it never took off:

* It was still subject to [[head-of-line-blocking]], since the requests had to be made in order, a slower one could still block the following ones.
* Many conflicting implementations were developed and compatibility issues ensued.
