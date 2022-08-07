# Readonly slave
A slave can be made read-only through the `READONLY` command. This doesn't only mean that it won't take writes, but also that it won't redirect requests to its master and only serve data it has already replicated. It can be useful to scale reads.
